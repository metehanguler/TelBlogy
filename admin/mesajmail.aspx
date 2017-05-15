<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="mesajmail.aspx.cs" Inherits="admin_mesajmail" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            float: left;
        }

        .txtgorsel2 {
            width: 600px;
            height: 30px;
            border: 1px solid #ddd;
            box-shadow: inset 0 1px 2px rgba(0,0,0,.07);
        }

        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <h3>&nbsp;</h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtgorsel2" placeholder="Email Adresi"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Konu</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txtgorsel2" placeholder="Konu"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td>
                <CKEditor:CKEditorControl ID="mesajCevapCke" BasePath="/ckeditor/" runat="server" Height="134px" Width="792px" FilebrowserUploadUrl="../ckeditor/yukle.ashx"></CKEditor:CKEditorControl></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnmesaj_cevap" runat="server" CssClass="btnGorsel" Height="43px" Text="Cevap Ver" Width="177px" OnClick="btnmesaj_cevap_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

