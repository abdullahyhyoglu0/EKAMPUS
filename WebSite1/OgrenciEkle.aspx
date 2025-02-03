<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciEkle.aspx.cs" Inherits="OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <form id="form1" runat="server">
        <div id="alertBox" style="display:none; position:fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 20px; border-radius: 5px; z-index: 1000;">
    Lütfen tüm alanları doldurunuz!
</div>
    

        <div class="form-group">
            <div>
            <asp:Label for="txtograd" runat="server" >Öğrenci Adı</asp:Label>
            <asp:TextBox ID="txtograd" runat="server" CssClass="form-control"></asp:TextBox>
                     </div>
            <br />
            <div>
            <asp:Label for="txtogrsoyad" runat="server" >Öğrenci Soyadı</asp:Label>
          <asp:TextBox ID="txtogrsoyad" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
            <div>
<asp:Label for="txtogrtel" runat="server" >Telefon Numarası</asp:Label>
<asp:TextBox ID="txtogrtel" runat="server" CssClass="form-control"></asp:TextBox>
         </div>
            <div>
                      <asp:Label for="txtogrmail" runat="server" >Öğrenci Mail</asp:Label>
          <asp:TextBox ID="txtogrmail" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
               <br />
                <div>
                      <asp:Label for="txtogrsifre" runat="server" >Öğrenci Şifre</asp:Label>
          <asp:TextBox ID="txtogrsifre" runat="server" CssClass="form-control"></asp:TextBox>
                     </div>
                <br />
                  <div>
            <asp:Label for="txtogrfoto" runat="server" >Öğrenci Fotoğraf Linki</asp:Label>
<asp:TextBox ID="txtogrfoto" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </form>
    
</asp:Content>

