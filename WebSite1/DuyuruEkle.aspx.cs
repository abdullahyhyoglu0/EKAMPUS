﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class DuyuruEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRETMENTableAdapter dt = new DataSetTableAdapters.TBL_OGRETMENTableAdapter();
        DropDownList1.DataSource = dt.OgretmenListesi();
        DropDownList1.DataTextField = "OGRTADSOYAD";
        DropDownList1.DataValueField = "OGRTID";
        DropDownList1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURULARTableAdapter DT = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
        DT.DuyuruEkle(txtduyurubaslik.Text, textarea.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
        Response.Redirect("DuyuruListesi.aspx");
    }
}