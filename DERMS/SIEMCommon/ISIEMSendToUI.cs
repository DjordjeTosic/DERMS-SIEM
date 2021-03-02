using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using DERMSCommon;
using DERMSCommon.NMSCommuication;
using DERMSCommon.DataModel.Core;
using DERMSCommon.DataModel.Wires;
using DERMSCommon.DataModel.Meas;

namespace SIEMCommon
{
    [ServiceContract]
    public interface ISIEMSendToUI
    {
        [OperationContract]
        List<SIEMData> Hello();
		[OperationContract]
		List<SIEMData> GetScadaLog();
		[OperationContract]
		[ServiceKnownType(typeof(Measurement))]
		[ServiceKnownType(typeof(Discrete))]
		[ServiceKnownType(typeof(Analog))]
		void GetScadaModel(SignalsTransfer signals);
		[OperationContract]
		[ServiceKnownType(typeof(DERMSCommon.DataModel.Wires.Switch))]
		[ServiceKnownType(typeof(PROTECTED_SWITCH))]
		[ServiceKnownType(typeof(Conductor))]
		[ServiceKnownType(typeof(Point))]
		[ServiceKnownType(typeof(Breaker))]
		[ServiceKnownType(typeof(ACLineSegment))]
		[ServiceKnownType(typeof(Measurement))]
		[ServiceKnownType(typeof(Discrete))]
		[ServiceKnownType(typeof(Analog))]
		[ServiceKnownType(typeof(Terminal))]
		[ServiceKnownType(typeof(Generator))]
		[ServiceKnownType(typeof(Substation))]
		[ServiceKnownType(typeof(SubGeographicalRegion))]
		[ServiceKnownType(typeof(RegulatingCondEq))]
		[ServiceKnownType(typeof(PowerSystemResource))]
		[ServiceKnownType(typeof(FeederObject))]
		[ServiceKnownType(typeof(EquipmentContainer))]
		[ServiceKnownType(typeof(Equipment))]
		[ServiceKnownType(typeof(EnergySource))]
		[ServiceKnownType(typeof(EnergyConsumer))]
		[ServiceKnownType(typeof(ConnectivityNodeContainer))]
		[ServiceKnownType(typeof(ConnectivityNode))]
		[ServiceKnownType(typeof(ConductingEquipment))]
		[ServiceKnownType(typeof(GeographicalRegion))]
		void GetCEModel(NetworkModelTransfer model);
		[OperationContract]
		List<SIEMData> GetMalware();
	}
}
