<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruEkle.aspx.cs" Inherits="DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <form id="form1" runat="server">
        <div id="alertBox" style="display:none; position:fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 20px; border-radius: 5px; z-index: 1000;">
    Lütfen tüm alanları doldurunuz!
</div>
    

        <div class="form-group">
            <div>
            <asp:Label for="txtduyuruogrt" runat="server" >Duyuru Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownList1"  runat="server" CssClass="form-control"></asp:DropDownList>
                     </div>
            <br />
            <div>
            <asp:Label for="txtduyurubaslik" runat="server" >Duyuru Başlık</asp:Label>
          <asp:TextBox ID="txtduyurubaslik" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
            <div>
<asp:Label for="txtduyuruicerik" runat="server" >Duyuru İçerik</asp:Label>
                <textarea id="textarea" class="form-control" runat="server"  cols="20" rows="4"></textarea>
         </div>      
            </div>
        <asp:Button ID="Button1" runat="server"  Text="Oluştur" CssClass="btn btn-info" OnClick="Button1_Click"/>

            </form>




</asp:Content>

