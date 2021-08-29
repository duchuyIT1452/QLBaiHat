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
        public void Insert_TacGia(string matacgia, string tentacgia, string thongtintacgia)
        {
            string sql = "Insert into TACGIA values('" + matacgia + "',N'" + tentacgia + "',N'" + thongtintacgia + "')";
            conDB.ExecuteNonQuery(sql);
        }

        public void Delete_TacGia(string matacgia)
        {
            string sql = "delete TACGIA where ma_tacgia = '" + matacgia + "' ";
            conDB.ExecuteNonQuery(sql);
        }

        public void Update_TacGia(string matacgia, string tentacgia, string thongtintacgia)
        {
            string sql = "update TACGIA set ten_tacgia = N'" + tentacgia + "', thongtin_tacgia = N'" + thongtintacgia + "' where ma_tacgia = '" + matacgia + "' ";
            conDB.ExecuteNonQuery(sql);
        }
        #region thừa
        /*
        public DataTable SearchByCode_TacGia(string matacgia)
        {
            string sql = "select *from TACGIA where ma_tacgia = '" + matacgia + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        public DataTable SearchByName_TacGia(string tentacgia)
        {
            string sql = "select *from TACGIA where ten_tacgia = '" + tentacgia + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        */
        #endregion
        public DataTable timkiem_TG(string tentacgia)
        {
            string sql = "select ma_tacgia, ten_tacgia, thongtin_tacgia from TACGIA where ten_tacgia like N'%" + tentacgia +"%' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
    }
}
