using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DERMSCommon
{
    public static class Logger
    {
        private static string path;
        private static string path2;
        private static string path3;
        private static string path4;


        static Logger()
        {
            path = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.Parent.FullName, @"Loggs\DERMS_Log.txt");
            path2 = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.Parent.FullName, @"Loggs\GeneratorValues.txt");
            path3 = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.Parent.FullName, @"Loggs\SimulatorValues.txt");
            path4 = Path.Combine(@"C: \Users\Djole\Desktop\DERMS-SIEM\DERMS\Loggs\CalculationEngine.txt");
        }

        public static void Log(string message,Enums.Component component, Enums.LogLevel logLevel)
        {
            try
            {
                if (!File.Exists(path))
                {
                    using (FileStream fs = File.Create(path))
                    {
                        fs.Close();
                    }
                }

                using (StreamWriter writter = File.AppendText(path))
                {
                    writter.Write(DateTime.Now + " << " + component.ToString() + " >> [" + logLevel.ToString() + "] -> " + message + "\r\n");
                    writter.Close();
                }
            }
            catch (Exception e)
            {

                Console.WriteLine(e.StackTrace);
            }
        }
        public static void LogGeneratorValues(string message, Enums.GeneratorType generatorType, Enums.LogLevel logLevel,float value)
        {
            try
            {
                if (!File.Exists(path2))
                {
                    using (FileStream fs = File.Create(path2))
                    {
                        fs.Close();
                    }
                }

                using (StreamWriter writter = File.AppendText(path2))
                {
                    writter.Write(DateTime.Now + "   " + generatorType.ToString() + " " + logLevel.ToString() + " Value:  " + value + "\r\n");
                    writter.Close();
                }
            }
            catch (Exception e)
            {

                Console.WriteLine(e.StackTrace);
            }
        }
        public static void LogSimulatorValues(string message, Enums.LogLevel logLevel, float value)
        {
            try
            {
                if (!File.Exists(path3))
                {
                    using (FileStream fs = File.Create(path3))
                    {
                        fs.Close();
                    }
                }

                using (StreamWriter writter = File.AppendText(path3))
                {
                    writter.Write(DateTime.Now + "   " + message + " " + logLevel.ToString() + " Value:  " + value + "\r\n");
                    writter.Close();
                }
            }
            catch (Exception e)
            {

                Console.WriteLine(e.StackTrace);
            }
        }
        public static void LogCalculateEngineConnections(string IP,string message, Enums.LogLevel logLevel)
        {
            try
            {
                if (!File.Exists(path4))
                {
                    using (FileStream fs = File.Create(path4))
                    {
                        fs.Close();
                    }
                }

                using (StreamWriter writter = File.AppendText(path4))
                {
                    writter.Write(DateTime.Now + "   "+ IP + "   " + logLevel.ToString() + "   " + message  + "\r\n");
                    writter.Close();
                }
            }
            catch (Exception e)
            {

                Console.WriteLine(e.StackTrace);
            }
        }
    }
}
