using System;
using System.Linq;
using System.Web.UI;

public partial class OgrenciGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id;
            if (int.TryParse(Request.QueryString["OGRID"], out id))
            {
                txtogrıd.Text = id.ToString();

                // Veritabanından veri çekmek için adapter kullanımı
                DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
                var ogrenciData = dt.OgrenciSec(id);

                // Verinin boş olup olmadığını kontrol et
                if (ogrenciData != null && ogrenciData.Rows.Count > 0)
                {
                    var ogrenci = ogrenciData.Rows[0]; // İlk satırı al
                    txtograd.Text = ogrenci["OGRAD"].ToString(); // AD sütunu
                    txtogrsoyad.Text = ogrenci["OGRSOYAD"].ToString(); // SOYAD sütunu
                    txtogrmail.Text = ogrenci["OGRMAİL"].ToString(); // SINIF sütunu
                    txtogrtel.Text = ogrenci["OGRTELEFON"].ToString(); // TELEFON sütunu
                    txtogrsifre.Text = ogrenci["OGRSİFRE"].ToString(); // ADRES sütunu"
                    txtogrfoto.Text = ogrenci["OGRFOTOGRAF"].ToString();
                }

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
        dt.OgrenciGuncelle(txtograd.Text, txtogrsoyad.Text, txtogrtel.Text, txtogrmail.Text, txtogrsifre.Text, txtogrfoto.Text, Convert.ToInt32(txtogrıd.Text));
        Response.Redirect("Default.aspx");
    }
}
