using DERMSCommon;
using DERMSCommon.NMSCommuication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace FTN.Services.NetworkModelService.Communication
{
    public class CommunicationWithCE
    {
        private ChannelFactory<ISendDataFromNMSToCE> factory;
        public ISendDataFromNMSToCE sendToCE;
        public CommunicationWithCE()
        {
            factory = new ChannelFactory<ISendDataFromNMSToCE>(new NetTcpBinding(), new EndpointAddress("net.tcp://localhost:19002/ISendDataFromNMSToCE"));
        }

        public void Open()
        {

            sendToCE = factory.CreateChannel();
            string client = string.Empty;
            client = GetLocalIPAddress();
            client += ":19002";

            Logger.LogCalculateEngineConnections(client, "NMS send request for establishing communication with CE", Enums.LogLevel.Info);
            Logger.LogCalculateEngineConnections(client, "NMS establieshed communication with CE", Enums.LogLevel.Info);


        }
        public static string GetLocalIPAddress()
        {
            var host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    return ip.ToString();
                }
            }
            throw new Exception("No network adapters with an IPv4 address in the system!");
        }
    }
}
