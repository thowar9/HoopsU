using System;
using HoopsU.App_Code; 
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoopsU
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Admin_Login_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login unsuccessful. Error submitted.')", true);
            try
            {
                DataSet ds = new DataSet();
                ds.ReadXml(MapPath(".") + "/../App_Data/LoginInfoDummy.xml"); 
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