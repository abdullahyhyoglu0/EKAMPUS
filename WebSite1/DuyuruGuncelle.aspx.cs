using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            int id;
            if (int.TryParse(Request.QueryString["DUYURUID"], out id))
            {
                txtduyuruıd.Text = id.ToString();

                // Veritabanından veri çekmek için adapter kullanımı
                DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
                var ogrenciData = dt.DuyuruSec(id);

                // Verinin boş olup olmadığını kontrol et
                if (ogrenciData != null && ogrenciData.Rows.Count > 0)
                {
                    var ogrenci = ogrenciData.Rows[0]; // İlk satırı al
                    txtduyurubaslik.Text = ogrenci["DUYURUBASLIK"].ToString(); // AD sütunu
                    txtduyuruicerik.Value = ogrenci["DUYURUİCERİK"].ToString(); // SOYAD sütunu
                 
                }

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
        
        
        DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
      
       
        
        
        
        
        dt.DuyuruGuncelle(txtduyurubaslik.Text,txtduyuruicerik.Value.ToString(),id);

        Response.Redirect("DuyuruListesi.aspx");




    }
}