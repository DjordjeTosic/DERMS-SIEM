using CalculationEngineServiceCommon;
using DERMSCommon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CalculationEngineService
{
    // OVA KLASA SE KORISTI ZA PUBSUB TO CE KASNIJE BITI IMPLEMENTIRANO, ZA SAD SU PIPELINE SAMO KLASE ServiceManager i ClientSideCE
    public class ServerSideProxy
    {
        public ChannelFactory<ICalculationEnginePubSub> factory;
        public ICalculationEnginePubSub Proxy { get; set; }
        public string ClientAddress { get; set; }
        private Thread timerWorker;
        private bool timerThreadStopSignal = true;
        private bool disposed = false;
        private DateTime currentTime;
        private TimeSpan elapsedTime = new TimeSpan();
        private int brojac = 0;
        int uslov = 0;

        public ServerSideProxy(string clientAddress)
        {
            this.ClientAddress = clientAddress;
            string[] toWrite = clientAddress.Split('/');
            
            Logger.LogCalculateEngineConnections(toWrite[2], "Client send request for establishing communication with CE", Enums.LogLevel.Info);
            Connect();
            InitializeAndStartThreads();
            Logger.LogCalculateEngineConnections(toWrite[2], "Client establieshed communication with CE", Enums.LogLevel.Info);
            SendInitialDerForecastDayAhead();
        }

        public void Connect()
        {
            NetTcpBinding binding = new NetTcpBinding();
            binding.Security = new NetTcpSecurity() { Mode = SecurityMode.None };
            factory = new ChannelFactory<ICalculationEnginePubSub>(binding, new EndpointAddress(ClientAddress));
            Proxy = factory.CreateChannel();
            ((IContextChannel)Proxy).OperationTimeout = new TimeSpan(0, 0, 1);
        }

        public void SendInitialDerForecastDayAhead()
        {
            DataToUI data = CalculationEngineCache.Instance.CreateDataForUI();
            data.Topic = (int)Enums.Topics.DerForecastDayAhead;
            try
            {
                Proxy.SendScadaDataToUI(data);
            }
            catch (CommunicationException)
            {
                Abort();
                Connect();
            }
            catch (TimeoutException)
            {
                Abort();
                Connect();
            }
        }

        public void Abort()
        {
            factory.Abort();
        }

        public void Close()
        {
            factory.Close();
        }
        private void InitializeAndStartThreads()
        {
            InitializeTimerThread();
            StartTimerThread();
        }

        private void InitializeTimerThread()
        {
            timerWorker = new Thread(TimerWorker_DoWork);
            timerWorker.Name = "Timer Thread";
        }

        private void StartTimerThread()
        {
            timerWorker.Start();
        }

        /// <summary>
        /// Timer thread:
        ///		Refreshes timers on UI and signalizes to acquisition thread that one second has elapsed
        /// </summary>
        private void TimerWorker_DoWork()
        {
            
            while (timerThreadStopSignal)
            {
                if (disposed)
                    return;
                brojac++;
                currentTime = DateTime.Now;
                elapsedTime = elapsedTime.Add(new TimeSpan(0, 0, 1));
                if(brojac % 60 == 0)
                {
                    while(uslov != 45)
                    {
                        uslov++;
                        //Logger.LogCalculateEngineConnections("Unknown", "Client send request for establishing communication with CE", Enums.LogLevel.Warning);
                    }
                }
                Thread.Sleep(1000);
            }
        }
    }
}
