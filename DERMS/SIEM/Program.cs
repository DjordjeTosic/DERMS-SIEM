using SIEMServices;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIEM
{
    public class Program
    {
        static void Main(string[] args)
        {
            ServiceManager  serviceManager = new ServiceManager();
            string path = @"C:\Users\student\Desktop\DERMS-SIEM\DERMS\Loggs\CalculationEngine.txt";
            using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {

               SIEMSendToUI.pos =  fs.Length;
            }
            Console.WriteLine("Press enter to exit. ");
            Console.ReadLine();
        }
    }
}
