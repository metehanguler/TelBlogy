using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_yorumlar : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string yorumID = "";
    string islem = "";
    string makaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yorumID = Request.QueryString["yorumID"];
        islem = Request.QueryString["islem"];
        makaleID = Request.QueryString["makaleID"];
        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("Delete from Yorum where yorumID='" + yorumID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }

        if (islem == "onay")
        {
            makaleID = Request.QueryString["makaleID"];
            SqlCommand cmdonay = new SqlCommand("update Yorum Set yorumOnay='True' where yorumID='" + yorumID + "'", baglan.baglan());
            cmdonay.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }

        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdyorum = new SqlCommand("SELECT Makale.makaleBaslik, Makale.makaleID, Makale.makaleYorum, Yorum.yorumID, Yorum.yorumAdSoyad, Yorum.yorumEmail, Yorum.yorumIcerik, Yorum.yorumTarih, Yorum.yorumOnay, Yorum.YorumResim FROM Makale INNER JOIN Yorum ON Makale.makaleID = Yorum.makaleID where yorumOnay=0", baglan.baglan());
            SqlDataReader dryorum = cmdyorum.ExecuteReader();
            DataList1.DataSource = dryorum;
            DataList1.DataBind();
        }
    }
}