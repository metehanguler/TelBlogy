using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmdmakale = new SqlCommand("SELECT Makale.makaleBaslik,Makale.makaleID ,Makale.makaleIcerik, Makale.makaleResim,Makale.makaleOzet, Makale.makaleTarih, Makale.makaleOkunma, Makale.makaleYorum, Kategori.kategoriAd FROM Kategori INNER JOIN Makale ON Kategori.kategoriID = Makale.kategoriID order by Makale.makaleId desc", baglan.baglan());
        SqlDataReader drmakalegetir = cmdmakale.ExecuteReader();
        dtl_makalebilgi.DataSource = drmakalegetir;
        dtl_makalebilgi.DataBind();
    }
}