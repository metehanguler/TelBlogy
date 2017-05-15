<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="onaylanmisYorum.aspx.cs" Inherits="admin_onaylanmisYorum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
            border: 0;
        }

        .auto-style13 {
            height: 16px;
            text-align: center;
        }

        .auto-style17 {
            height: 16px;
            width: 149px;
        }

        .auto-style20 {
            height: 16px;
            width: 400px;
            word-wrap: break-word;
        }

        .auto-style21 {
            height: 16px;
            width: 150px;
        }

        .auto-style23 {
            height: 16px;
            width: 141px;
        }

        .auto-style24 {
            width: 31px;
        }

        .auto-style26 {
            width: 78px;
        }

        .auto-style27 {
            height: 16px;
            width: 140px;
        }

        .auto-style28 {
            height: 16px;
            width: 255px;
        }

        .auto-style29 {
            width: 32px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 28px; color: #23282d; font-weight: 400; font-size: 23px; margin-bottom: 20px; margin-top: 55px;">Onaylanmış Yorumlar</div>
    <asp:DataList ID="DataList1" runat="server" Width="101%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="auto-style12" style="text-align: left; color: white; border: 0;">
                <tr class="auto-style17">
                    <td class="auto-style28">Yazar</td>
                    <td class="auto-style20">Yorum </td>
                    <td class="auto-style21">Yazı </td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp; Tarih</td>
                    <td class="auto-style13">İşlem Paneli</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="auto-style12" style="text-align: left; background-color: #F9F9F9; border: 0; table-layout: fixed;">
                <tr class="auto-style17">
                    <td class="auto-style24">
                        <asp:Image ID="Image1" runat="server" Height="32px" ImageUrl='<%# Eval("yorumResim") %>' Width="32px" />
                    </td>
                    <td class="auto-style27">

                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Literal>

                    </td>
                    <td class="auto-style20">
                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Literal>
                    </td>
                    <td class="auto-style26"></td>
                    <td class="auto-style17">
                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                    </td>
                    <td class="auto-style23">
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>'></asp:Literal>
                    </td>
                    <td class="auto-style13">
                        <a href="onaylanmisyorum.aspx?yorumID=<%#Eval("yorumID") %>&islem2=onaylama">
                            <img alt="" class="auto-style29" src="../images/onaylama.png" /></a>
                        &nbsp;&nbsp;
                        <a href="onaylanmisyorum.aspx?yorumID=<%#Eval("yorumID") %>&islem=sil">
                            <img alt="" class="auto-style29" src="../images/delete.png" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>

