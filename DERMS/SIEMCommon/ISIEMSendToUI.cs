using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using DERMSCommon;

namespace SIEMCommon
{
    [ServiceContract]
    public interface ISIEMSendToUI
    {
        [OperationContract]
        List<SIEMData> Hello();
    }
}
