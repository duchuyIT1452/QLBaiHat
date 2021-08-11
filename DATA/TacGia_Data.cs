using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DATA
{
    public class TacGia_Data
    {
        ConnectDB conDB = new ConnectDB();

        #region Lấy tất cả dữ liệu bảng tác giả
        public DataTable getAllTacGia()
        {
            string sql = "select *from TacGia";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region Hàm xử lý 
        public int Insert_TacGia(string matacgia, string tentacgia, string thongtintacgia)
        {
            return conDB.executeNonQuery("insert into TacGia values('" + matacgia + "', '" + tentacgia + "','" + thongtintacgia + "')");
        }

        public int Delete_TacGia(string matacgia)
        {
            return conDB.executeNonQuery("delete TacGia where ma_tacgia = '" + matacgia + "' ");
        }

        public int Update_TacGia(string matacgia, string tentacgia, string thongtintacgia)
        {
            return conDB.executeNonQuery("update TacGia set ma_tacgia = '" + matacgia + "', ten_tacgia = '" + tentacgia + "', thongtin_tacgia = '" + thongtintacgia + "' ");
        }

        public DataTable SearchByCode_TacGia(string matacgia)
        {
            string sql = "select *from TacGia where ma_tacgia = '" + matacgia + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        public DataTable SearchByName_TacGia(string tentacgia)
        {
            string sql = "select *from TacGia where ten_tacgia = '" + tentacgia + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
    }
}
