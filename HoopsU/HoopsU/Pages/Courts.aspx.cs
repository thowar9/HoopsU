using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoopsU
{
    public partial class Courts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (HoopsUDBEntities entities = new HoopsUDBEntities())
            {   //SPROC BELOW
                grdCourts.DataSource = entities.sprGetAllCourts();
                grdCourts.DataBind(); 
            }
        }
    }
}