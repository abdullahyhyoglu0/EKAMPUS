using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciBul2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ogrId = Request.QueryString["OGRID"];
            if (!string.IsNullOrEmpty(ogrId))
            {
                DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
                var ogrenciListesi = dt.OgrenciAra(Convert.ToInt32(ogrId));
                Repeater1.DataSource = ogrenciListesi;
                Repeater1.DataBind();
            }
        }








    }
}
  