using CalculationEngineServiceCommon;
using DERMSCommon;
using DERMSCommon.DataModel.Core;
using DERMSCommon.DataModel.Meas;
using DERMSCommon.NMSCommuication;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CyberAttackSimulationTool
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ChannelFactory<ISendDataFromNMSToScada> factory;
        public ISendDataFromNMSToScada sendToScada;
        private IFlexibilityFromUIToCE ProxyCE { get; set; }
        private ChannelFactory<IFlexibilityFromUIToCE> factoryCE;
        private Double Inc { get; set; }
        private Double Dec { get; set; }
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;
            while (i != 80)
            {
                i++;
                Process.Start(@"C:\Users\Djole\Desktop\DERMS-SIEM\DERMS\UI\UI\bin\Debug\UI.exe");


            }
            

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Analog temp1 = new Analog(30064771073);
            temp1.Name = "Wind";
            temp1.NormalValue = 1700;
            temp1.PowerSystemResource = 21474836482;
            temp1.Description = "Aqusition";
            temp1.Latitude = (float)45.27777;
            temp1.Longitude = (float)19.7993031;
            temp1.MaxValue = 20;
            temp1.MinValue = 10;
            temp1.Mrid = "a_22";
            temp1.MeasurementType = FTN.Common.MeasurementType.ActivePower;
            //////////////////Simulation
            Analog temp2 = new Analog(30064771074);
            temp2.Name = "Wind";
            temp2.NormalValue = 1700;
            temp2.PowerSystemResource = 21474836482;
            temp2.Description = "Simulation";
            temp2.Latitude = (float)45.27777;
            temp2.Longitude = (float)19.7993031;
            temp2.MaxValue = 20;
            temp2.MinValue = 10;
            temp2.Mrid = "a_2221";
            temp2.MeasurementType = FTN.Common.MeasurementType.ActivePower;
            //////////Commmanding
            Analog temp3 = new Analog(30064771075);
            temp3.Name = "Wind";
            temp3.NormalValue = 0;
            temp3.PowerSystemResource = 21474836482;
            temp3.Description = "Commanding";
            temp3.Latitude = (float)45.27777;
            temp3.Longitude = (float)19.7993031;
            temp3.MaxValue = 20;
            temp3.MinValue = 10;
            temp3.Mrid = "a_2222";
            temp3.MeasurementType = FTN.Common.MeasurementType.ActivePower;
            ////////////////DRUGI SIGNAL
            Analog temp4 = new Analog(30064771076);
            temp4.Name = "Solar";
            temp4.NormalValue = 986;
            temp4.PowerSystemResource = 21474836481;
            temp4.Description = "Aqusition";
            temp4.Latitude = (float)19.7993031;
            temp4.Longitude = (float)45.27777;
            temp4.MaxValue = 20;
            temp4.MinValue = 10;
            temp4.Mrid = "a_22";
            temp4.MeasurementType = FTN.Common.MeasurementType.ActivePower;
            //////////////////Simulation
            Analog temp5 = new Analog(30064771077);
            temp5.Name = "Solar";
            temp5.NormalValue = 986;
            temp5.PowerSystemResource = 21474836481;
            temp5.Description = "Simulation";
            temp5.Latitude = (float)19.7993031;
            temp5.Longitude = (float)45.27777;
            temp5.MaxValue = 20;
            temp5.MinValue = 10;
            temp5.Mrid = "a_22";
            temp5.MeasurementType = FTN.Common.MeasurementType.ActivePower;
            //////////Commmanding
            Analog temp6 = new Analog(30064771078);
            temp6.Name = "Solar";
            temp6.NormalValue = 0;
            temp6.PowerSystemResource = 21474836481;
            temp6.Description = "Commanding";
            temp6.Latitude = (float)19.7993031;
            temp6.Longitude = (float)45.27777;
            temp6.MaxValue = 20;
            temp6.MinValue = 10;
            temp6.Mrid = "a_22";
            temp6.MeasurementType = FTN.Common.MeasurementType.ActivePower;
            ///////////////TRECI SIGNAL
            Analog temp7 = new Analog(30064771079);
            temp7.Name = "Wind";
            temp7.NormalValue = 2486;
            temp7.PowerSystemResource = 21474836484;
            temp7.Description = "Aqusition";
            temp7.Latitude = (float)19.7993031;
            temp7.Longitude = (float)45.27777;
            temp7.MaxValue = 20;
            temp7.MinValue = 10;
            temp7.Mrid = "a_22";
            temp7.MeasurementType = FTN.Common.MeasurementType.ActivePower;

            Analog temp8 = new Analog(30064771080);
            temp8.Name = "Wind";
            temp8.NormalValue = 2486;
            temp8.PowerSystemResource = 21474836484;
            temp8.Description = "Simulation";
            temp8.Latitude = (float)19.7993031;
            temp8.Longitude = (float)45.27777;
            temp8.MaxValue = 20;
            temp8.MinValue = 10;
            temp8.Mrid = "a_22";
            temp8.MeasurementType = FTN.Common.MeasurementType.ActivePower;

            Analog temp9 = new Analog(30064771081);
            temp9.Name = "Wind";
            temp9.NormalValue = 0;
            temp9.PowerSystemResource = 21474836484;
            temp9.Description = "Commanding";
            temp9.Latitude = (float)19.7993031;
            temp9.Longitude = (float)45.27777;
            temp9.MaxValue = 20;
            temp9.MinValue = 10;
            temp9.Mrid = "a_22";
            temp9.MeasurementType = FTN.Common.MeasurementType.ActivePower;

            Dictionary<int, Dictionary<long, IdentifiedObject>> insert = new Dictionary<int, Dictionary<long, IdentifiedObject>>();
            Dictionary<int, Dictionary<long, IdentifiedObject>> update = new Dictionary<int, Dictionary<long, IdentifiedObject>>();
            Dictionary<int, Dictionary<long, IdentifiedObject>> delete = new Dictionary<int, Dictionary<long, IdentifiedObject>>();
            Dictionary<long, IdentifiedObject> tempDic = new Dictionary<long, IdentifiedObject>();
            tempDic.Add(temp1.GlobalId, temp1);
            tempDic.Add(temp2.GlobalId, temp2);
            tempDic.Add(temp3.GlobalId, temp3);
            tempDic.Add(temp4.GlobalId, temp4);
            tempDic.Add(temp5.GlobalId, temp5);
            tempDic.Add(temp6.GlobalId, temp6);
            tempDic.Add(temp7.GlobalId, temp7);
            tempDic.Add(temp8.GlobalId, temp8);
            tempDic.Add(temp9.GlobalId, temp9);

            insert.Add(0, tempDic);
            SignalsTransfer signalsTransfer = new SignalsTransfer(insert, update, delete);
            NetTcpBinding binding = new NetTcpBinding();
            binding.Security = new NetTcpSecurity() { Mode = SecurityMode.None };
            factory = new ChannelFactory<ISendDataFromNMSToScada>(binding, new EndpointAddress("net.tcp://localhost:19012/ISendDataFromNMSToScada"));

            sendToScada = factory.CreateChannel();
            bool result = false;
			int i = 0;
			while (i != 100)
			{
				result = sendToScada.CheckForTM(signalsTransfer);
				result = sendToScada.SendGids(signalsTransfer);
				i++;
			}
        }
        public void Connect()
        {
            try
            {
                NetTcpBinding binding = new NetTcpBinding();
                binding.Security = new NetTcpSecurity() { Mode = SecurityMode.None };
                binding.CloseTimeout = System.TimeSpan.FromMinutes(20);
                binding.OpenTimeout = System.TimeSpan.FromMinutes(20);
                binding.ReceiveTimeout = System.TimeSpan.FromMinutes(20);
                binding.SendTimeout = System.TimeSpan.FromMinutes(20);
                binding.MaxBufferSize = 8000000;
                binding.MaxReceivedMessageSize = 8000000;
                binding.MaxBufferPoolSize = 8000000;
                factoryCE = new ChannelFactory<IFlexibilityFromUIToCE>(binding, new EndpointAddress("net.tcp://localhost:19011/IFlexibilityFromUIToCE"));
                ProxyCE = factoryCE.CreateChannel();
            }
            catch (Exception e)
            {
                MessageBox.Show("ManualCommandingViewModel 52: " + e.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
    
}
