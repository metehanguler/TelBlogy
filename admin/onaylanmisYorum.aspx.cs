using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_onaylanmisYorum : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string yorumID = "";
    string islem = "";
    string islem2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yorumID = Request.QueryString["yorumID"];
        islem = Request.QueryString["islem"];
        islem2 = Request.QueryString["islem2"];
        if (islem == "sil")
        {
            SqlCommand cmdosil = new SqlCommand("Delete from Yorum where yorumID='" + yorumID + "'", baglan.baglan());
            cmdosil.ExecuteNonQuery();
            Response.Redirect("onaylanmisyorum.aspx");
        }

        if (islem2 == "onaylama")
        {
            SqlCommand cmdonay = new SqlCommand("update Yorum Set yorumOnay='False' where yorumID='" + yorumID + "'", baglan.baglan());
            cmdonay.ExecuteNonQuery();
            Response.Redirect("onaylanmisyorum.aspx");
        }
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdonayli = new SqlCommand("SELECT Makale.makaleBaslik, Makale.makaleID, Makale.makaleYorum, Yorum.yorumID, Yorum.yorumAdSoyad, Yorum.yorumEmail, Yorum.yorumIcerik, Yorum.yorumTarih, Yorum.yorumOnay, Yorum.YorumResim FROM Makale INNER JOIN Yorum ON Makale.makaleID = Yorum.makaleID where yorumOnay=1", baglan.baglan());
            SqlDataReader dronayli = cmdonayli.ExecuteReader();
            DataList1.DataSource = dronayli;
            DataList1.DataBind();
        }
    }
}