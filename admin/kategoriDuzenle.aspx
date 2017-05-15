<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="kategoriDuzenle.aspx.cs" Inherits="admin_kategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 145px;
            height: 38px;
            color:white;
        }
        .auto-style2 {
            width: 187px;
            height: 38px;
            color:white;
        }
        .auto-style3 {
            width: 576px;
            height: 38px;
            color:white;
        }
                .auto-style5 {
            width: 576px;
            height: 38px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 28px; color: #23282d; font-weight: 400; font-size: 23px;    margin-top:55px;">Kategori Düzenleme Paneli</div>
    <div style="height:20px;"></div>
    <div style="margin:20px 0 0 30px;">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style3">Kategori Adı</td>
                    <td class="auto-style2">Düzenle</td>
                    <td class="auto-style1">Sil</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style5">
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                    </td>
                    <td class="auto-style2">
                        <a href="kategoriGuncelle.aspx?kategoriID=<%#Eval("kategoriID") %>"><img alt="" class="auto-style12" src="../images/cevap.png" /></a>
                    </td>
                    <td class="auto-style1">
                        <a href="kategoriDuzenle.aspx?kategoriID=<%#Eval("kategoriID") %>&islem=sil"><img alt="" class="auto-style12" src="../images/delete.png" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
        </div>
    </asp:Content>

