using DERMSCommon;
using DERMSCommon.NMSCommuication;
using SIEMCommon;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace SIEMServices
{
    public class SIEMSendToUI : ISIEMSendToUI
    {
        public static long pos;
		private static SignalsTransfer signalsTransfer;
		public static SignalsTransfer SignalsTransfer { get => signalsTransfer; set => signalsTransfer = value; }
		private static NetworkModelTransfer networkModelTransfer;
		public static NetworkModelTransfer NetworkModelTransfer { get => networkModelTransfer; set => networkModelTransfer = value; }
		public List<SIEMData> Hello()
        {
            string path = @"C:\Users\student\Desktop\DERMS-SIEM\DERMS\Loggs\CalculationEngine.txt";
            List<SIEMData> LogDataForUI = new List<SIEMData>();
            using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                
                using (BufferedStream bs = new BufferedStream(fs))
                {
                    using (StreamReader sr = new StreamReader(bs))
                    {
                        string line;
                        string boja = "";
                        if (pos != fs.Length)
                        {
                            sr.BaseStream.Position = pos;
                            while ((line = sr.ReadLine()) != null)
                            {
                                string[] parts = line.Split(new[] { "   " }, StringSplitOptions.None);
                                DateTime dateTime = DateTime.Parse(parts[0]);
                                if (parts[1].Equals(" Unknown")) 
                                    LogDataForUI.Add(new SIEMData(dateTime, parts[1], parts[2], parts[3],1));
                                else
                                    LogDataForUI.Add(new SIEMData(dateTime, parts[1], parts[2], parts[3], 0));

                            }
                        }
                        pos = fs.Length;
                    }
                }
                return LogDataForUI;
            }
        }
		public List<SIEMData> GetScadaLog()
		{
			string path = @"C:\Users\student\Desktop\DERMS-SIEM\DERMS\Loggs\ScadaLog.txt";
			List<SIEMData> LogDataForUI = new List<SIEMData>();
			using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
			{

				using (BufferedStream bs = new BufferedStream(fs))
				{
					using (StreamReader sr = new StreamReader(bs))
					{
						string line;
						string boja = "";
						if (pos != fs.Length)
						{
							sr.BaseStream.Position = pos;
							while ((line = sr.ReadLine()) != null)
							{
								string[] parts = line.Split(new[] { "  " }, StringSplitOptions.None);
								DateTime dateTime = DateTime.Parse(parts[0]);
								if (parts[1].Equals(" Unknown"))
									LogDataForUI.Add(new SIEMData(dateTime, parts[1], parts[2], parts[3], 2));
								else
									LogDataForUI.Add(new SIEMData(dateTime, parts[1], parts[2], parts[3], 2));

							}
						}
						pos = fs.Length;
					}
				}
				return LogDataForUI;
			}
		}
		public List<SIEMData> GetMalware()
		{
			string path = @"C:\Users\student\Desktop\DERMS-SIEM\DERMS\Loggs\MalwareHistory.txt";
			List<SIEMData> LogDataForUI = new List<SIEMData>();
			using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
			{

				using (BufferedStream bs = new BufferedStream(fs))
				{
					using (StreamReader sr = new StreamReader(bs))
					{
						string line;

							while ((line = sr.ReadLine()) != null)
							{
								string[] parts = line.Split(new[] { "  " }, StringSplitOptions.None);
								DateTime dateTime = DateTime.Parse(parts[0]);
								if (parts[3].Contains("DDoS"))
									LogDataForUI.Add(new SIEMData(dateTime, parts[1], parts[2], parts[3], 1));
								else
									LogDataForUI.Add(new SIEMData(dateTime, parts[1], parts[2], parts[3], 2));

							}
						
						//pos = fs.Length;
					}
				}
				return LogDataForUI;
			}
		}

		public void GetScadaModel(SignalsTransfer signals)
		{
			SignalsTransfer = signals;
			
			//SignalsTransfer = CloneClass.DeepClone(SignalsTransfer);
			if (NetworkModelTransfer != null)
			{

			}
		}

		public void GetCEModel(NetworkModelTransfer model)
		{
			NetworkModelTransfer = model;
			//NetworkModelTransfer = CloneClass.DeepClone(NetworkModelTransfer);
		}

		
	}
}
