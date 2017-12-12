using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization; 

namespace HoopsU
{
    public partial class skillsEvalutation : System.Web.UI.Page
    {
        public class Skills
        {
            public int dribbling { get; set; }
            public int shooting { get; set; }
            public int passing { get; set; }
            public string bestMove { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            skillPanel.Visible = false; //initially hide skill panel
        }

        protected void butSubmitSkills_Click(object sender, EventArgs e)
        {
            skillPanel.Visible = true; 
            Skills data = new Skills(); //accept data from forms into data object
            data.dribbling = Convert.ToInt32(drpDribbling.SelectedValue);
            data.shooting = Convert.ToInt32(drpShooting.SelectedValue);
            data.passing = Convert.ToInt32(drpPassing.SelectedValue);
            data.bestMove = txtBestMove.Text;

            string output = new JavaScriptSerializer().Serialize(data); //converts to JSON
            
            //parse input 
            //set text boxes 
        }
    }
}