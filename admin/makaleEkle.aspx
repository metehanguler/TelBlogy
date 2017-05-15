<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="makaleEkle.aspx.cs" Inherits="admin_makaleEkle" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 398px;
            column-span:inherit;
        }
        #ContentPlaceHolder1_kategori_goster{
            width:150px;
            height:23px;
        }

        
        .auto-style2 {
            width: 66px;
            height: 21px;
        }
        .auto-style6 {
            height: 38px;
        }

        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


                <div style="height:28px; color:#23282d;font-weight:400; font-size:23px;    margin-top:55px;">Yeni Yazı Ekle</div>
            <div style="height:19px; width:799px"></div>
                    
        
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        Kategori Ekle : 
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="txtGorsel" Height="45px" Width="814px">
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txtGorsel" Height="36px" Width="813px" placeholder="Başlık"></asp:TextBox>
                    </td>
                </tr>
                 
                 <tr>
                    <td><CKEditor:CKEditorControl ID="txt_makaleIcerik" BasePath="/ckeditor/" runat="server" Height="246px" Width="807px" FilebrowserUploadUrl="../ckeditor/yukle.ashx"></CKEditor:CKEditorControl></td>
                </tr>
                 <tr>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txtGorsel" Width="814px" />
                     </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="btn_makaleEkle" runat="server" CssClass="btnGorsel" Height="43px" Text="Makale Ekle" Width="177px" OnClick="btn_makaleEkle_Click" />
                     </td>
                </tr>
                
            </table>
                    
            <!-- ----------------------------------------------------------------------------------- -->

</asp:Content>



