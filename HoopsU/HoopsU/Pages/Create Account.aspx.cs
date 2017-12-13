using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoopsU
{
    public partial class Create_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            bool Gender = true;
            if (RadioButtonListGender.SelectedValue == "Female")
                Gender = false; 
            
            using (HoopsUDBEntities entities = new HoopsUDBEntities())
            {   //SPROC used to add user data to database
                entities.sprAddUser(txtUsername.Text, txtPassword.Text, txtFirstName.Text, txtLastName.Text, Gender, txtStAddress.Text, txtEmailAddress.Text ); 
            }

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Account created!')", true);
        }
    }
}