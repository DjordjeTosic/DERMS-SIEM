using DERMSCommon;
using SIEMCommon;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace SIEMServices
{
    public class SIEMSendToUI : ISIEMSendToUI
    {
        public static long pos;
        public List<SIEMData> Hello()
        {
            string path = @"C:\Users\Djole\Desktop\DERMS-SIEM\DERMS\Loggs\CalculationEngine.txt";
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
    }
}
