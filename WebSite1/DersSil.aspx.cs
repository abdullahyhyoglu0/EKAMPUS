﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["DERSNID"]);
        DataSetTableAdapters.TBL_DERSLERTableAdapter DT = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        DT.DersSil(id);
        Response.Redirect("DersListesi.aspx");
    }
}