using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DATA
{
    public class GetData_TheLoai
    {
        ConnectDB conn = new ConnectDB();

        public DataTable getTheLoai()
        {
            String sql = "SELECT * FROM THELOAI";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
        public void themTheLoai(string ma_theloai, string ten_theloai)
        {
            String sql = "INSERT INTO THELOAI VALUES('"+ ma_theloai + "',N'" + ten_theloai +"')";
            conn.ExecuteNonQuery(sql);
        }
        public void suaTheLoai(string ma_theloai, string ten_theloai)
        {
            String sql = "UPDATE THELOAI SET ma_theloai = '" + ma_theloai + "',N'" + ten_theloai + "'";
            conn.ExecuteNonQuery(sql);
        }
        public void xoaTheLoai(string ma_theloai)
        {
            String sql = "DELETE THELOAI WHERE ma_theloai = '" + ma_theloai + "'";
            conn.ExecuteNonQuery(sql);
        }
        public DataTable timkiemTheLoaiTheoMa(string ma_theloai)
        {
            String sql = "SELECT * FROM THELOAI WHERE ma_theloai='" + ma_theloai + "'";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
        // Tìm kiếm gần đúng
        public DataTable timkiemTheLoaiTheoTen(string ten_theloai)
        {
            String sql = "SELECT * FROM THELOAI WHERE ten_theloai ='" + ten_theloai + "'";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
    }
}
