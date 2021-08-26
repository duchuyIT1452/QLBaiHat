using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class ConnectDB
    {
        public SqlConnection getConnect()
        {
            string connString = @"Data Source=DESKTOP-B0JGHPP;Initial Catalog=DBBaiHat;Integrated Security=True";
            return new SqlConnection(connString);
        }

        public DataTable GetTable(String sql)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = getConnect();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.Fill(dt);
            return dt;
        }
        public void ExecuteNonQuery(String sql)
        {
            SqlConnection conn = getConnect();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        internal int executeNonQuery(string p)
        {
            throw new NotImplementedException();
        }
    }
}
