using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class iletisim : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmekle = new SqlCommand("insert into Iletisim (iletisimAdSoyad,iletisimEmail,iletisimIcerik) values ('"+yorumİsim.Text+"','"+yorumEmail.Text+"','"+YorumMesaj.Text+"')", baglan.baglan());
        cmekle.ExecuteNonQuery();
        yorumİsim.Text = "";
        yorumEmail.Text = "";
        YorumMesaj.Text = "";
        Response.Write("<script>alert('Mesaj Gönderildi')</script>");
    }
}