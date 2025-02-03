<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotListesi.aspx.cs" Inherits="NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<table class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr>
            <th>ÖĞRENCİ ID</th>
            <th>ÖĞRENCİ AD SOYAD</th>
            <th>DERS AD</th>
            <th>SINAV1</th>
            <th>SINAV2</th>
            <th>SINAV3</th>
            <th>ORTALAMA</th>
                 <th>DURUM</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    
                    <td><%# Eval("OGRENCİID") %></td>
                        <td><%# Eval("[OGRENCİ AD SOYAD]") %></td>
                        <td><%# Eval("DERSAD") %></td>
                        <td><%# Eval("SINAV1") %></td>
                        <td><%# Eval("SINAV2") %></td>
                        <td><%# Eval("SINAV3") %></td>
                        <td><%# Eval("ORTALAMA") %></td>
                        <td><%# Eval("DURUM") %></td>
               <td>
<asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "NotGuncelle.aspx?NOTID=" + Eval("NOTID") + "&DERSAD=" + Server.UrlEncode(Eval("DERSAD").ToString()) %>'  runat="server"   CssClass="btn btn-success ">Güncelle</asp:HyperLink>
                

                    </td>  </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>










</asp:Content>

