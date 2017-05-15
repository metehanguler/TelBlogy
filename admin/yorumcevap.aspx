<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="yorumcevap.aspx.cs" Inherits="admin_yorumcevap" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            padding: 20px;
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
    <div style="background-color: #F9F9F9; margin-bottom: 15px; padding: 15px; margin-top: 55px;">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <h3>Yorum : </h3>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>

            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="height: 28px; color: #23282d; font-weight: 400; font-size: 23px; margin-bottom: 20px; margin-top: 55px;">Yoruma Cevap Ver</div>

    <div style="width: 800px; height: 200px; background-color: white; border: 1px solid #ddd;">

        <table class="auto-style1">
            <tr>
                <td>
                    <h3>Yazar</h3>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>İsim:</td>
                <td style="text-align: right">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtgorsel2" Text="Admin" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>E-posta:</td>
                <td style="text-align: right">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txtgorsel2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: right">&nbsp;</td>
            </tr>
        </table>
    </div>
    <table class="auto-style2">
        <tr>
            <td>
                <CKEditor:CKEditorControl ID="yorumCevapCke" BasePath="/ckeditor/" runat="server" Height="134px" Width="792px" FilebrowserUploadUrl="../ckeditor/yukle.ashx"></CKEditor:CKEditorControl></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnyorum_cevap" runat="server" CssClass="btnGorsel" Height="43px" Text="Cevap Ver" Width="177px" OnClick="btnyorum_cevap_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

