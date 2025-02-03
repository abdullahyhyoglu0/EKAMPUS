using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // TextBox'ların boş olup olmadığını kontrol ediyoruz.
        if (string.IsNullOrWhiteSpace(txtograd.Text) ||
            string.IsNullOrWhiteSpace(txtogrsoyad.Text) ||
            string.IsNullOrWhiteSpace(txtogrtel.Text) ||
            string.IsNullOrWhiteSpace(txtogrmail.Text) ||
            string.IsNullOrWhiteSpace(txtogrsifre.Text) ||
            string.IsNullOrWhiteSpace(txtogrfoto.Text))
        {
            // JavaScript ile alertBox div'ini görünür yapıyoruz.
            ScriptManager.RegisterStartupScript(this, this.GetType(), "showAlert", "document.getElementById('alertBox').style.display = 'block';", true);
            return; // İşlemi sonlandırıyoruz.
        }

        // Eğer tüm alanlar doluysa, veritabanına ekleme işlemini gerçekleştiriyoruz.
        DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
        dt.OgrenciEkle(txtograd.Text, txtogrsoyad.Text, txtogrtel.Text, txtogrmail.Text, txtogrsifre.Text, txtogrfoto.Text);
        Response.Redirect("Default.aspx");
    }
}