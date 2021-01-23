using SIEMCommon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UI.Communication
{
    public class CommunicationWithSIEM
    {
        private ChannelFactory<ISIEMSendToUI> factory;
        public ISIEMSendToUI sendToSIEM;

        public CommunicationWithSIEM()
        {
            factory = new ChannelFactory<ISIEMSendToUI>(new NetTcpBinding(),
                                                                    new EndpointAddress("net.tcp://localhost:12001/ISIEMSendToUI"));
        }
        public void Open()
        {
            sendToSIEM = factory.CreateChannel();
        }
    }
}
