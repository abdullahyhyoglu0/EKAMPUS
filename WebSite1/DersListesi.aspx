 <%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersListesi.aspx.cs" Inherits="DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


<table class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr>
            <th>Ders ID</th>
            <th> Ders Ad</th>
            <th>İşlemler</th>
        
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("DERSNID") %></td>
                    <td><%# Eval("DERSAD") %></td>
                    <td> <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DersSil.aspx?DERSNID=" +Eval("DERSNID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>

                        


                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
       

    </tbody>
</table>
 <asp:HyperLink ID="HyperLink3"  runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn alert-info">Ders Ekle</asp:HyperLink>








</asp:Content>

