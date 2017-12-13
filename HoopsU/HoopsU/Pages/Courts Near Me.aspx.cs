using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoopsU
{
    public partial class Courts_Near_Me : System.Web.UI.Page
    {
        string InputZone; 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Zone"] == null)
                CourtsNearMe.Visible = false;
            else
            {
                SelectZone.Visible = false; //QUERY STRING
                CourtsNearMe.GroupingText = (CourtsNearMe.GroupingText + Request.QueryString["Zone"]);
                using (HoopsUDBEntities entities = new HoopsUDBEntities())
                {   //SPROC BELOW
                    grdCourts.DataSource = entities.sprGetCourtsByZone(Request.QueryString["Zone"]);
                    grdCourts.DataBind(); 
                }
            }
        }

        protected void butSubmit_Click(object sender, EventArgs e)
        {
            InputZone = drpZone.SelectedValue; 
            SelectZone.Visible = false;
            CourtsNearMe.Visible = true; 
            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            Response.Redirect(url + "?Zone=" + InputZone); //query strings work
        }
    }
}