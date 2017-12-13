using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization; 

namespace HoopsU.Handlers
{
    public class Contact
    {
        public string firstName;
        public string lastName;
        public int phoneNumber;
        public string address;
        public int age; 
    }
    /// <summary>
    /// Summary description for JSONAJAX
    /// </summary>
    public class JSONAJAX : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            Contact c = new Contact();
            c.firstName = "Tucker";
            c.lastName = "Howard";
            c.phoneNumber = 1234567890;
            c.address = "123 Example St.";
            c.age = 24;
            JavaScriptSerializer JSS = new JavaScriptSerializer();
            String JSONObject = JSS.Serialize(c);
            context.Response.Write(JSONObject); 
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}