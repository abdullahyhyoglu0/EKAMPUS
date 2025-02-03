<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciBul.aspx.cs" Inherits="OgrenciBul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form runat="server">
      <div>
  <asp:Label for="txtogrıd" runat="server" >Öğrenci ID</asp:Label>
<asp:TextBox ID="txtogrıd" runat="server" CssClass="form-control"></asp:TextBox>
      </div>

      <br />
        <div>
                <asp:Button ID="Button1" runat="server" Text="Bul" CssClass="btn btn-success" OnClick="Button1_Click"   />

  </div>



</form>

</asp:Content>

