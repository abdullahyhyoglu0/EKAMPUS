﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {





        DataSetTableAdapters.OGRNOTLARTableAdapter DT = new DataSetTableAdapters.OGRNOTLARTableAdapter();
        Repeater1.DataSource = DT.NotlarıGetir();
        Repeater1.DataBind();
    }
}