using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using ZedGraph;
using ZedGraph.Web;

namespace HoopsU
{
    public partial class About_Us : System.Web.UI.Page
    {
        protected void ZedGraphWeb1_RenderGraph(ZedGraphWeb webObject,
      Graphics g, MasterPane pane)
        {
            //GraphPane class came from the ZedGraph DLL
            GraphPane myPane = pane[0]; //create an empty Graph Pane object
            myPane.Title.Text = "Approximate Site Traffic (2017)"; //Title text property of pane object
            myPane.XAxis.Title.Text = "Month"; //Title X axis label text property
            myPane.YAxis.Title.Text = "Visits (thousands)"; //Title Y axis label text property
            //PointPairList class came from the ZedGraph DLL
            PointPairList list1 = new PointPairList(); //New Point Pair List object
            //Create some plotting line to display
            for (int i = 0; i < 18; i++)
            {
                double x = Convert.ToDouble(i);
                double y = x * x;
                list1.Add(x, y);
            }
            //Use a LineItem type chart came from the ZedGraph DLL
            string textForLegend = "Site Visits";
            myPane.CurveList.Clear();
            LineItem myCurve = myPane.AddCurve(textForLegend,
              list1, Color.Red, SymbolType.Diamond);
            myCurve.Symbol.IsVisible = true;
        }

    }
}