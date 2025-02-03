using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCİTableAdapter DT = new
            DataSetTableAdapters.TBL_OGRENCİTableAdapter();
        Repeater1.DataSource = DT.OGRENCİBİLGİ();
        Repeater1.DataBind();

    }
}