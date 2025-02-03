<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruGuncelle.aspx.cs" Inherits="DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


     <form id="form1" runat="server">
             <div class="form-group">
            <div>
            <asp:Label for="txtduyuruıd" runat="server" >Duyuru ID</asp:Label>
    <asp:TextBox ID="txtduyuruıd" runat="server" CssClass="form-control"></asp:TextBox>
                     </div>
            <br />
            <div>
            <asp:Label for="txtduyurubaslik" runat="server" >Duyuru Başlık</asp:Label>
          <asp:TextBox ID="txtduyurubaslik" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
            <div>
<asp:Label for="txtduyuruicerik" runat="server" >Duyuru İçerik</asp:Label>
                <textarea id="txtduyuruicerik" class="form-control" runat="server"  cols="20" rows="4"></textarea>
         </div>      
            </div>
        <asp:Button ID="Button1" runat="server"  Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />

            </form>









</asp:Content>

