using System;
using HoopsU.App_Code; 
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using log4net; 

namespace HoopsU
{
    public partial class Login : System.Web.UI.Page
    {
        private static readonly ILog logger = log4net.LogManager.GetLogger(
            System.Reflection.MethodBase.GetCurrentMethod().DeclaringType); //for log4net

        protected void Page_Load(object sender, EventArgs e)
        {
            log4net.Config.XmlConfigurator.Configure(); 
            try
            {
                DataSet ds = new DataSet(); //fake 
                ds.ReadXml(MapPath(".") + "/../App_Data/PopulatePageDummy.xml"); //fake dummy file to throw error
            }
            catch (Exception ex)
            {
                logger.Error("Login Population Error", ex); 
            }
        }

        protected void Admin_Login_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login unsuccessful. Error submitted.')", true);
            try
            {
                DataSet ds = new DataSet();
                ds.ReadXml(MapPath(".") + "/../App_Data/LoginInfoDummy.xml"); //fake dummy file to throw error
            }
            catch (Exception exc)
            {
                ExceptionUtility.LogException(exc, "Calendar"); 
            }
        }

        protected void butLogin_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login unsuccessful. Try again.')", true);
        }
    }
}