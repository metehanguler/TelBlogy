<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="kategoriEkle.aspx.cs" Inherits="admin_kategoriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 28px; color: #23282d; font-weight: 400; font-size: 23px;    margin-top:55px;">Yeni Kategori Ekle</div>

    <div style="height: 19px; width: 799px"></div>


    <table class="auto-style1">
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtGorsel" Height="36px" Width="813px" placeholder="Kategori İsmi"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="813px" CssClass="txtGorsel" placeholder="Kategori Açıklama"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td style="height:20px;"></td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btnGorsel" Height="43px" Text="Kategori Oluştur" Width="177px" OnClick="Button1_Click" />
            </td>
        </tr>

    </table>
</asp:Content>

