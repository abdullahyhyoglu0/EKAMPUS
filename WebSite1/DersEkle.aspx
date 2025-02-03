<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">





    <form id="form1" runat="server">
        <div id="alertBox" style="display:none; position:fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 20px; border-radius: 5px; z-index: 1000;">
    Lütfen tüm alanları doldurunuz!
</div>
    

        <div class="form-group">
          
         
            <div>
            <asp:Label for="txtdersekle" runat="server" >Ders Adı</asp:Label>
          <asp:TextBox ID="txtdersekle" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
          
            </div>
        <asp:Button ID="Button1" runat="server"  Text="Ekle" CssClass="btn btn-success" OnClick="Button1_Click"/>

            </form>

</asp:Content>

