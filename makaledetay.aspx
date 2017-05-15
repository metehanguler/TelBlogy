<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="makaledetay.aspx.cs" Inherits="makaledetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #genel {
            width: 90%;
            background-color: white !important;
            padding: 45px 50px 15px !important;
            margin-bottom: 50px !important;
            display: block;
            font-size: 15px;
        }

        body {
            word-wrap: break-word;
        }

        p, span {
            text-align: justify;
        }

        #makalebaslik {
            font-weight: 900;
            color: #101010;
            font-size: 38px;
            line-height: 140%;
            letter-spacing: 0;
            margin-bottom: 20px;
        }

        #makaledetay {
            color: #D32F2F;
            font-weight: bold;
            font-size: 15px;
            margin-bottom: 20px;
        }

            #makaledetay a {
                margin-right: 15px;
                display: inline-block;
                color: inherit;
            }

        #makaleICerik {
            word-wrap: inherit;
            width: 100%;
        }

        #yorumAdSoyad {
            float: right;
            width: 50px;
            height: 25px;
        }

        #yorumlarResim {
            width: 64px;
            height: 64px;
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="dtl_makalebilgi" runat="server" Width="800px">
        <ItemTemplate>
            <div id="genel">
                <div id="makalebaslik">
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label>
                </div>
                <div id="makaledetay">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <a href="#">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("makaleEkleyen") %>'></asp:Label></a>
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    <a href="#">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label></a>
                    <i class="fa fa-eye" aria-hidden="true"></i>
                    <a href="#">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleOkunma") %>'></asp:Label></a>
                    <i class="fa fa-tags" aria-hidden="true"></i>
                    <a href="kategoridetay.aspx?kategoriID=<%#Eval("kategoriID") %>">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Label></a>
                </div>
                <div id="makaleICerik">
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("makaleIcerik") %>'></asp:Label>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <%--Yorum Kısmı--%>
    <div style="height: 50px; width: 800px;"></div>
    <div id="yorumlar">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div style="width: 800px; height: auto; float: left">
                    <div style="float: left; width: 64px; height: 64px">
                        <asp:Image ID="Image2" Width="64px" Height="64px" runat="server" ImageUrl='<%# Eval("yorumResim") %>' />
                    </div>
                    <div style="float: left; height: auto; width: 730px; border-bottom: 1px solid #999999;">
                        <div style="float: left; width: 630px; height: 40px; margin-left: 20px;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumAdSoyad") %>' Font-Size="18pt" Font-Bold="True"></asp:Label>
                        </div>
                        <div style="float: right">
                            <asp:Label ID="Label9" runat="server" Font-Size="12px" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="#999999"></asp:Label>
                        </div>
                        <div style="float: left; width: 707px; height: auto; margin: 10px 0 20px 20px; word-wrap: break-word; text-align: justify">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                        </div>
                    </div>
                </div>
                <div style="float: left; width: 800px; height: 20px">
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="margin-top: 20px">
        <h3>Yorum Yap : </h3>
        <br />
        Doldurulması Gerekli Alanlar (*)<br />
        <br />
        <div>
            İsim (*) :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="yorumİsim">İsim Boş Olamaz</asp:RequiredFieldValidator><br />
            <asp:TextBox ID="yorumİsim" Font-Bold="True" runat="server" CssClass="yorumText" placeHolder="İsminiz" BackColor="White"></asp:TextBox><br />
            Email (İsteğe Bağlı) :<br />
            <asp:TextBox ID="yorumEmail" runat="server" CssClass="yorumText" placeHolder="E-mail Adresiniz" Font-Bold="True" BackColor="White"></asp:TextBox><br />
            Mesaj (*) :<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="YorumMesaj" ErrorMessage="RequiredFieldValidator">Mesaj Kısmı Boş Olamaz</asp:RequiredFieldValidator><br />
            <asp:TextBox ID="YorumMesaj" Font-Bold="True" Wrap="true" runat="server" Height="167px" BackColor="White" TextMode="MultiLine" CssClass="yorumText" placeHolder="Mesajınız..."></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Yorum Gönder" CssClass="yorumButon" OnClick="Button1_Click" /> <br />
        </div>
    </div>
</asp:Content>

