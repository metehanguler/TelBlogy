using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_makaleEkle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        if (Page.IsPostBack == false)
        {
            SqlCommand cmkgetir = new SqlCommand("select * from Kategori", baglan.baglan());
            SqlDataReader drkgetir = cmkgetir.ExecuteReader();
            ddl_kategori.DataTextField = "kategoriAd";
            ddl_kategori.DataValueField = "kategoriID";
            ddl_kategori.DataSource = drkgetir;
            ddl_kategori.DataBind();
        }
    }
    protected void btn_makaleEkle_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/sresim/" + FileUpload1.FileName));
            SqlCommand cmdmekle = new SqlCommand("insert into Makale(makaleBaslik,makaleIcerik,makaleResim,kategoriID,makaleEkleyen) values ('" + TextBox1.Text + "','" + txt_makaleIcerik.Text + "','/sresim/" + FileUpload1.FileName + "','" + ddl_kategori.SelectedValue + "','Admin')", baglan.baglan());
            cmdmekle.ExecuteNonQuery();
            Response.Redirect("makaleEkle.aspx");
        }
        else
        {
            Response.Write("<script>alert('Resim Eklemelisin...')</script>");
        }
    }
}