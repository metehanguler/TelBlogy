using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_yorumcevap : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string makaleID = "";
    string yorumID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
        yorumID = Request.QueryString["yorumID"];

        SqlCommand cmdmakale = new SqlCommand("Select * from Yorum where yorumID = '" + yorumID + "'", baglan.baglan());
        SqlDataReader drmakalegetir = cmdmakale.ExecuteReader();
        DataList1.DataSource = drmakalegetir;
        DataList1.DataBind();
    }
    protected void btnyorum_cevap_Click(object sender, EventArgs e)
    {
        makaleID = Request.QueryString["makaleID"];
        SqlCommand ycver = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumEmail,yorumIcerik,yorumOnay,yorumResim,makaleID) values ('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + yorumCevapCke.Text + "','True','/images/admin.png','" + makaleID + "')", baglan.baglan());
        ycver.ExecuteNonQuery();
        Response.Redirect("yorumlar.aspx");
    }
}