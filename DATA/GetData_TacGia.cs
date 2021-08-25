using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DATA
{
    public class GetData_TacGia
    {
        ConnectDB conDB = new ConnectDB();

        #region Lấy tất cả dữ liệu bảng tác giả
        public DataTable getAllTacGia()
        {
            string sql = "select *from TACGIA";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region Hàm xử lý 
        public void Insert_TacGia(string ma_tacgia, string ten_tacgia, string thongtin_tacgia)
        {
            string sql = "Insert into TACGIA values('" + ma_tacgia + "',N'" + ten_tacgia + "',N'" + thongtin_tacgia + "')";
            conDB.ExecuteNonQuery(sql);
        }

        public void Delete_TacGia(string ma_tacgia)
        {
            string sql = "delete TACGIA where ma_tacgia = '" + ma_tacgia + "' ";
            conDB.ExecuteNonQuery(sql);
        }

        public int Update_TacGia(string ma_tacgia, string ten_tacgia, string thongtin_tacgia)
        {
            
            return conDB.executeNonQuery("update TACGIA set ma_tacgia = '" + ma_tacgia + "', ten_tacgia = N'" + ten_tacgia + "', thongtin_tacgia = N'" + thongtin_tacgia + "' ");
        }

        public DataTable SearchByCode_TacGia(string ma_tacgia)
        {
            string sql = "select *from TACGIA where ma_tacgia = '" + ma_tacgia + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        public DataTable SearchByName_TacGia(string ten_tacgia)
        {
            string sql = "select *from TACGIA where ten_tacgia = '" + ten_tacgia + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
    }
}
