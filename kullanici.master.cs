using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class kullanici : System.Web.UI.MasterPage
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmdkategori11 = new SqlCommand("select top 6 * from Makale order by makaleOkunma desc", baglan.baglan());
        SqlDataReader drkategori = cmdkategori11.ExecuteReader();
        dtl_populer.DataSource = drkategori;
        dtl_populer.DataBind();

        SqlCommand cmdkategori2 = new SqlCommand("select top 5 * from Makale order by makaleID desc", baglan.baglan());
        SqlDataReader drkategori2 = cmdkategori2.ExecuteReader();
        DataList2.DataSource = drkategori2;
        DataList2.DataBind();

        SqlCommand cmdkategori22 = new SqlCommand("select * from Kategori order by KategoriID desc", baglan.baglan());
        SqlDataReader drkategori22 = cmdkategori22.ExecuteReader();
        dtl_kategori.DataSource = drkategori22;
        dtl_kategori.DataBind();

    }
protected void btnExample_Click(object sender, EventArgs e)
    {
        Response.Redirect("aramadetay.aspx?aranan=" + textBox1.Text);
    }
}
