<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="yorumlar.aspx.cs" Inherits="admin_yorumlar" %>

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
            width: 347px;
            word-wrap: break-word;
        }

        .auto-style23 {
            height: 16px;
            width: 143px;
        }

        .auto-style33 {
            height: 16px;
            width: 220px;
        }

        .auto-style34 {
            height: 16px;
            width: 121px;
        }

        .auto-style35 {
            height: 16px;
            width: 144px;
        }

        .auto-style36 {
            height: 16px;
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 28px; color: #23282d; font-weight: 400; font-size: 23px; margin-bottom: 20px; margin-top: 55px;">Onay Bekleyen Yorumlar</div>
    <asp:DataList ID="DataList1" runat="server" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="auto-style12" style="text-align: left; color: white; border: 0;">
                <tr class="auto-style17">
                    <td class="auto-style33">Yazar</td>
                    <td class="auto-style20">Yorum </td>
                    <td class="auto-style34">Yazı </td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp; Tarih</td>
                    <td class="auto-style13">İşlem Paneli</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="auto-style12" style="text-align: left; background-color: #F9F9F9; border: 0; table-layout: fixed;">
                <tr class="auto-style17">
                    <td class="auto-style33">
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Literal>
                    </td>
                    <td class="auto-style20">
                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Literal>
                    </td>
                    <td class="auto-style35">
                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                    </td>
                    <td class="auto-style36">
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>'></asp:Literal>
                    </td>
                    <td class="auto-style13">
                        <a href='yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islem=onay'>
                            <img alt="" class="auto-style11" src="../images/onay.png" /></a>
                        &nbsp;&nbsp;
                        <a href="yorumcevap.aspx?makaleID=<%#Eval("makaleID") %>&yorumID=<%#Eval("yorumID") %>">
                        <img alt="" class="auto-style11" src="../images/cevap.png" /></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islem=sil">
                            <img alt="" class="auto-style11" src="../images/delete.png" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>




</asp:Content>

