using System;
using System.IO;
using System.Web;

namespace HoopsU.App_Code
{
    public sealed class ExceptionUtility //sealed prevents other classes from inheriting it
    {   
        //constructor 
        private ExceptionUtility() //this can be private because methods are static 
        { }

        //log an exception 
        public static void LogException(Exception exc, string source)
        {
            string logFile = "~/App_Data/ErrorLog.txt";
            logFile = HttpContext.Current.Server.MapPath(logFile);

            //open log file in append mode and write to the log
            StreamWriter sw = new StreamWriter(logFile, true);
            sw.WriteLine("********* {0} *********", DateTime.Now); 
            if (exc.InnerException != null)
            {
                sw.Write("Inner Exception Type: ");
                sw.WriteLine(exc.InnerException.GetType().ToString());
                sw.Write("Inner Exception Details: ");
                sw.WriteLine(exc.InnerException.Message);
                sw.Write("Inner Exception Source: ");
                sw.WriteLine(exc.InnerException.Source); 
                if (exc.InnerException.StackTrace != null)
                {
                    sw.Write("Inner Exception Stack Trace: ");
                    sw.WriteLine(exc.InnerException.StackTrace);
                    sw.WriteLine(); 
                }
            }
            sw.Write("Exception Type: ");
            sw.WriteLine(exc.GetType().ToString());
            sw.WriteLine("Exception Details: " + exc.Message);
            sw.WriteLine("Source: " + exc.Source); 
            if (exc.StackTrace != null)
            {
                sw.Write("Exception Stack Trace: ");
                sw.WriteLine(exc.StackTrace);
                sw.WriteLine(); 
            }
            sw.Close(); 
        }
    }
}