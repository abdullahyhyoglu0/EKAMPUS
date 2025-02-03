<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotGuncelle.aspx.cs" Inherits="NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


        <form id="form1" runat="server">
        <div id="alertBox" style="display:none; position:fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 20px; border-radius: 5px; z-index: 1000;">
    Lütfen tüm alanları doldurunuz!
</div>
    

        <div class="form-group">
                  <div>

     <asp:Label for="txtnotdersad" runat="server" >Ders Ad</asp:Label>
   <asp:DropDownList ID="DropDownList1"  runat="server" CssClass="form-control"></asp:DropDownList>
         </div>
         <br />
                  <div>

     <asp:Label for="txtnotID" runat="server" >Not Id</asp:Label>
   <asp:TextBox ID="txtnotID" runat="server" CssClass="form-control"></asp:TextBox>
         </div>
         <br />
             <div>

            <asp:Label for="txtnotadısoyadı" runat="server" >Öğrenci Adı Soyadı</asp:Label>
          <asp:TextBox ID="txtnotadısoyadı" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
            <div>
<asp:Label for="txtsınav1" runat="server" >Sınav1</asp:Label>
<asp:TextBox ID="txtsınav1" runat="server" CssClass="form-control"></asp:TextBox>
         </div>
            <br />
            <div>
                      <asp:Label for="txtsınav2" runat="server" >Sınav2</asp:Label>
          <asp:TextBox ID="txtsınav2" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
               <br />
                <div>
                      <asp:Label for="txtsınav3" runat="server" >Sınav3</asp:Label>
          <asp:TextBox ID="txtsınav3" runat="server" CssClass="form-control"></asp:TextBox>
                     </div>
                <br />
                  <div>
            <asp:Label for="txtortalama" runat="server" >Ortalama</asp:Label>
<asp:TextBox ID="txtortalama" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
            <br />
                              <div>
            <asp:Label for="txtnotdurum" Text="Durum" runat="server" ></asp:Label>
<asp:TextBox ID="txtnotdurum" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
        </div>
             <asp:Button ID="Button2" runat="server" Text="Hesapla" CssClass="btn btn-info"   />
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success"   />
    </form>
    






</asp:Content>

