using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class kategoridetay : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string kategoriID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriID = Request.QueryString["kategoriID"];
        SqlCommand cmdkategori = new SqlCommand("SELECT Makale.makaleBaslik,Makale.makaleIcerik,Makale.makaleID,Makale.makaleResim, Makale.makaleOzet, Makale.makaleTarih, Makale.makaleOkunma, Makale.makaleYorum, Kategori.kategoriAd, Kategori.kategoriID FROM Kategori INNER JOIN Makale ON Kategori.kategoriID = Makale.kategoriID where Kategori.kategoriID='" + kategoriID + "'", baglan.baglan());
        SqlDataReader drkategori = cmdkategori.ExecuteReader();

        dtl_kategoriDetay.DataSource = drkategori;
        dtl_kategoriDetay.DataBind();
    }
}