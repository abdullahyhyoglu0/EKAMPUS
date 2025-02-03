<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciBul2.aspx.cs" Inherits="OgrenciBul2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


<table class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Ad</th>
            <th>Soyad</th>
            <th>Telefon</th>
            <th>Mail</th>
            <th>Şifre</th>
            <th>İşlemler</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("OGRID") %></td>
                    <td><%# Eval("OGRAD") %></td>
                    <td><%# Eval("OGRSOYAD") %></td>
                    <td><%# Eval("OGRTELEFON") %></td>
                    <td><%# Eval("OGRMAİL") %></td>
                    <td><%# Eval("OGRSİFRE") %></td>
                    <td> <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/OgrenciSil.aspx?OGRID=" +Eval("OGRID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>

                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink>


                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>





</asp:Content>

