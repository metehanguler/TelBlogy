<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="mesajlar.aspx.cs" Inherits="admin_mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
            border: 0;
        }

        .auto-style13 {
            height: 16px;
            text-align: center;
            width: 100px;
        }

        .auto-style17 {
            height: 16px;
            width: 149px;
        }

        .auto-style20 {
            height: 16px;
            width: 150px;
            word-wrap: break-word;
        }

        .auto-style23 {
            height: 16px;
            width: 80px;
        }

        .auto-style27 {
            height: 16px;
            width: 89px;
        }

        .auto-style29 {
            width: 32px;
            height: 32px;
        }

        .auto-style31 {
            width: 39px;
        }

        .auto-style32 {
            height: 16px;
            width: 162px;
            word-wrap: break-word;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 28px; color: #23282d; font-weight: 400; font-size: 23px; margin-bottom: 20px; margin-top: 55px;">Gelen Mesajlar</div>
    <asp:DataList ID="DataList1" runat="server" Width="101%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="auto-style12" style="text-align: left; color: white; border: 0;">
                <tr class="auto-style17">
                    <td class="auto-style27">Kimden</td>
                    <td class="auto-style32">Mesaj</td>
                    <td class="auto-style31"></td>
                    <td class="auto-style20">Email</td>
                    <td class="auto-style23">Tarih</td>
                    <td class="auto-style13">İşlem Paneli</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="auto-style12" style="text-align: left; background-color: #F9F9F9; border: 0; table-layout: fixed;">
                <tr class="auto-style17">
                    <td class="auto-style27">
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("iletisimAdSoyad") %>'></asp:Literal>
                    </td>
                    <td class="auto-style20">
                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("iletisimIcerik") %>'></asp:Literal>
                    </td>
                    <td style="width: 50px;"></td>
                    <td class="auto-style17">
                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("iletisimEmail") %>'></asp:Literal>
                    </td>
                    <td class="auto-style23">
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("iletisimTarih","{0:dd MMMM yyyy}") %>'></asp:Literal>
                    </td>
                    <td class="auto-style13">
                        <a href="mesajmail.aspx?iletisimID=<%#Eval("iletisimID") %>">
                            <img alt="" class="auto-style29" src="../images/mesaj.png" /></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="mesajlar.aspx?iletisimID=<%#Eval("iletisimID") %>&islem=sil">
                            <img alt="" class="auto-style29" src="../images/delete.png" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>

