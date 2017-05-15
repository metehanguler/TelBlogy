<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
    <style>
        #govdesagbaslik {
            height: 30px;
            float: left;
            color: #555;
            font-size: 24px;
            padding: 10px 0 10px 0;
            border-bottom: 2px solid #05a9c5;
            font-weight: bold;
            width: 100%;
            line-height: 30px;
            border-top: 2px solid #ddd;
        }

        #devamiclass a {
            color: blue;
            margin: 20px 10px 0 0;
            font-weight: 900;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="govdesagbaslik"><i class="fa fa-flash" aria-hidden="true"></i>Son Eklenen İçerikler</div>
    <asp:DataList ID="dtl_makalebilgi" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
        <ItemTemplate>
            <div style="width: 840px;">
                <div style="float: left; margin-top: 25px; padding: 17px;">
                    <div style="height: 450px; width: 380px; background-color: white;">
                        <div style="height: 200px; width: 380px;">
                            <asp:Image ID="Image2" runat="server" Width="380px" Height="200px" ImageUrl='<%# Eval("makaleResim") %>' />
                        </div>
                        <div style="margin: 10px 20px 5px 20px; overflow: hidden; font-weight: bold; font-size: 1.2em;">
                            <a href="makaledetay.aspx?makaleID=<%#Eval("makaleID") %>">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label></a>
                        </div>
                        <div style="margin: 10px 20px 5px 20px; color: #808080; font-weight: bold; font-size: 15px;">
                            <i class="fa fa-clock-o"></i>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("makaleOkunma") %>'></asp:Label>
                        </div>
                        <div style="margin: 0 20px 10px 20px; overflow: hidden; font-size: 0.9em; text-align: justify;">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleIcerik").ToString().Substring(0,200) %>'></asp:Label>
                        </div>
                        <div id="devamiclass">
                            <a href="/makaledetay.aspx?makaleID=<%#Eval("makaleID") %>">Devamını Oku...</a>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>


