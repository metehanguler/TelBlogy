using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public class esqlbaglantisi
{
    public SqlConnection baglan()
    {
       
        SqlConnection baglanti = new SqlConnection("Data Source=PC; Initial Catalog=telBlog; Integrated Security=true");

        baglanti.Open();
        SqlConnection.ClearPool(baglanti);
        SqlConnection.ClearAllPools();
        return (baglanti);
    }
}


//SqlConnection baglanti = new SqlConnection("Server=37.247.108.27; DataBase=telBlog; User ID=metehanguler; Password=5Yh5fctaa2-; Integrated Security=false");