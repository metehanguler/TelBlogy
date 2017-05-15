<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="makaleduzenle.aspx.cs" Inherits="admin_makaleduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style4 {
            color: white;
        }

        .auto-style7 {
            width: 100%;
        }

        .auto-style11 {
            width: 558px;
            height: 40px;
            color: white;
            font-weight: bolder;
        }

        .auto-style12 {
            width: 32px;
            height: 32px;
            color: white;
        }

        .auto-style13 {
            width: 203px;
            color: white;
        }

        .auto-style14 {
            width: 555px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 34px; color: black; font-weight: bold; font-size: 2em; margin-bottom: 20px; margin-top: 55px;">
        Makale Düzenleme Silme Paneli : 
    </div>
    <asp:DataList ID="ddl_makaleGetir" runat="server" Width="960px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style11">Yazı Adı</td>
                    <td class="auto-style13">Düzenle</td>
                    <td class="auto-style4">Sil</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style14">
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                    </td>
                    <td class="auto-style5">
                        <a href="makaleGuncelle.aspx?makaleID=<%#Eval("makaleID") %>">
                            <img alt="" class="auto-style12" src="../images/cevap.png" />
                    </td>
                    <td class="auto-style4">
                        <a href="makaleduzenle.aspx?makaleID=<%#Eval("makaleID") %>&islem=sil">
                            <img alt="" class="auto-style12" src="../images/delete.png" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>

