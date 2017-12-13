using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoopsU
{
    public partial class Favorites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (HoopsUDBEntities entities = new HoopsUDBEntities())
            {
                string result = entities.sprGetFavoritesByUsername("thowar9").ToString();
                txtFavoriteCourts.Text = result; 
            }
        }
    }
}