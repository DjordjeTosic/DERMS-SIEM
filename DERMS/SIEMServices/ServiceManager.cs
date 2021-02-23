using SIEMCommon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace SIEMServices
{
    public class ServiceManager
    {
        private ServiceHost serviceHost;

        public ServiceManager()
        {
            StartService();
        }
        public void StartService()
        {
           

            //Open service for UI
            string address = String.Format("net.tcp://192.168.137.2:12001/ISIEMSendToUI");
            NetTcpBinding binding = new NetTcpBinding();
           // binding.Security = new NetTcpSecurity() { Mode = SecurityMode.None };
            serviceHost = new ServiceHost(typeof(SIEMSendToUI));
            serviceHost.AddServiceEndpoint(typeof(ISIEMSendToUI), binding, address);
            serviceHost.Open();
            Console.WriteLine("Open: net.tcp://localhost:12001/ISIEMSendToUI");

            
        }
        public void StopService()
        {
            serviceHost.Close();
        }
    }
}
