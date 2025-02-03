<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruListesi.aspx.cs" Inherits="DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>İÇERİK</th>
            <th>OGRETMEN</th>
        
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("DUYURUID") %></td>
                    <td><%# Eval("DUYURUBASLIK") %></td>
                    <td><%# Eval("DUYURUİCERİK") %></td>
                    <td><%# Eval("DUYURUOGRT") %></td>
              
                    <td> <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DuyuruSilaspx.aspx?DUYURUID="+Eval("DUYURUID") %>'  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>

                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DUYURUID="+Eval("DUYURUID") %>' runat="server"  CssClass="btn btn-success">Güncelle</asp:HyperLink>


                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>


</asp:Content>

