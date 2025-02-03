using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

public partial class Grafikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Chart2.Series["Series1"].Points.AddXY("Ocak", 50);
        Chart2.Series["Series1"].Points.AddXY("Şubat", 70);
        Chart2.Series["Series1"].Points.AddXY("Mart", 60);
        Chart2.Series["Series1"].Points.AddXY("Nisan", 90);

        Chart3.Series["Series1"].Points.AddXY("Ocak", 50);
        Chart3.Series["Series1"].Points.AddXY("Şubat", 70);
        Chart3.Series["Series1"].Points.AddXY("Mart", 60);
        Chart3.Series["Series1"].Points.AddXY("Nisan", 90);



        Chart4.Series["Series1"].Points.AddXY("Ocak", 50);
        Chart4.Series["Series1"].Points.AddXY("Şubat", 70);
        Chart4.Series["Series1"].Points.AddXY("Mart", 60);
        Chart4.Series["Series1"].Points.AddXY("Nisan", 90);

        Chart5.Series["Series1"].Points.AddXY("Ocak", 50);
        Chart5.Series["Series1"].Points.AddXY("Şubat", 70);
        Chart5.Series["Series1"].Points.AddXY("Mart", 60);
        Chart5.Series["Series1"].Points.AddXY("Nisan", 90);
    }
}