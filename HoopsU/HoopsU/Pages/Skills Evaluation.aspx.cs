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
            txtSkillDribbling.Enabled = false;
            txtSkillPassing.Enabled = false;
            txtSkillShooting.Enabled = false;
            txtSkillBestMove.Enabled = false; 

            skillPanel.Visible = true; 
            Skills data = new Skills(); //accept data from forms into data object
            data.dribbling = Convert.ToInt32(drpDribbling.SelectedValue);
            data.shooting = Convert.ToInt32(drpShooting.SelectedValue);
            data.passing = Convert.ToInt32(drpPassing.SelectedValue);
            data.bestMove = txtBestMove.Text;

            string output = new JavaScriptSerializer().Serialize(data); //converts to JSON
            // output is now in JSON

            Response.Cookies["userName"].Value = output;
            Response.Cookies["userName"].Expires = DateTime.Now.AddDays(1);

            Skills outData = new Skills(); //Parse JSON to skills object

            outData = new JavaScriptSerializer().Deserialize<Skills>(output);
            txtSkillDribbling.Text = Convert.ToString(outData.dribbling);
            txtSkillShooting.Text = Convert.ToString(outData.shooting);
            txtSkillPassing.Text = Convert.ToString(outData.passing);
            txtSkillBestMove.Text = outData.bestMove; 
        }
    }
}