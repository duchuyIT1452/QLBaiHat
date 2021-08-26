using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class GetData_CaSi
    {
        ConnectDB conDB = new ConnectDB();
        #region Lấy toàn bộ ca sĩ
        public DataTable getAllCaSi()
        {
            String sql = "Select * from CaSi";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
        #region Thêm ca sĩ
        public void InsertCaSi(String maCaSi, String tenCaSi, String thongTinCaSi)
        {
            String sql = "Insert Into CaSi Values('" + maCaSi + "', N'" + tenCaSi + "', N'" + thongTinCaSi + "')";
            conDB.ExecuteNonQuery(sql);
        }
        #endregion

        #region tìm ca sĩ bằng mã ca sĩ
        public DataTable SearchByMa(String maCaSi)
        {
            String sql = "Select * from CaSi Where ma_casi='" + maCaSi + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        public DataTable SearchByTen(String tenCaSi)
        {
            String sql = "Select * from CaSi Where ten_casi='" + tenCaSi + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public void UpdateCaSi(String maCaSi, String tenCaSi, String thongTinCaSi)
        {
            String sql = "Update CaSi Set ten_casi=N'" + tenCaSi + "', thongtin_casi=N'"+ thongTinCaSi + "' where ma_casi='" + maCaSi + "'";
            conDB.ExecuteNonQuery(sql);
        }
        public void DeleteCaSi(String maCaSi)
        {
            String sql = "Delete CaSi Where ma_casi='" + maCaSi + "'";
            conDB.ExecuteNonQuery(sql);
        }
    }
}
