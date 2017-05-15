<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="makaleGuncelle.aspx.cs" Inherits="admin_makaleGuncelle" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            color: white;
            font-size: 1em;
            padding: 5px;
        }

        .auto-style2 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 28px; color: #23282d; font-weight: 400; font-size: 23px;">Yazı Güncelle</div>
    <div style="height: 19px; width: 799px"></div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="txtGorsel" Height="36px" Width="974px" placeholder="Başlık"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <CKEditor:CKEditorControl ID="txt_makaleIcerik" BasePath="/ckeditor/" runat="server" Height="246px" Width="965px" FilebrowserUploadUrl="../ckeditor/yukle.ashx"></CKEditor:CKEditorControl></td>
        </tr>
        <tr>
            <td style="color: black;">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txtGorsel" Width="973px" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="btn_guncelle" runat="server" CssClass="btnGorsel" Height="43px" Text="Düzenlemeyi Kaydet" Width="177px" OnClick="btn_guncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

