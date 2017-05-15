<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="kategoridetay.aspx.cs" Inherits="kategoridetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #devamiclass a {
            color: blue;
            margin: 20px 10px 0 0;
            font-weight: 900;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:DataList ID="dtl_kategoriDetay" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
        <ItemTemplate>
            <div style="width: 840px;">
                <div style="float: left; margin-top: 25px; padding: 17px;">
                    <div style="height: 550px; width: 380px; background-color: white;">
                        <div style="height: 200px; width: 380px;">
                            <asp:Image ID="Image2" runat="server" Width="380px" Height="200px" ImageUrl='<%# Eval("makaleResim") %>' />
                        </div>
                        <div style="margin: 10px 20px 5px 20px; overflow: hidden; font-weight: bold; font-size: 1.2em;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label>
                        </div>
                        <div style="margin: 10px 20px 5px 20px"><i class="fa fa-clock-o"></i></div>
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

