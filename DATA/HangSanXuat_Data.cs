using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DATA
{
    public class HangSanXuat_Data
    {
        ConnectDB conDB = new ConnectDB();

        #region Lấy tất cả các giá trị trong bảng HSX
        public DataTable getAllHangSX()
        {
            string sql = "select ma_hangsanxuat, ten_hangsanxuat from HANGSANXUAT";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region Các phương thức xử lý
        public int Insert_HangSX(string mahangsanxuat, string tenhangsanxuat, string thongtinhangsanxuat)
        {
            return conDB.executeNonQuery("Insert into HANGSANXUAT values('" + mahangsanxuat + "','" + tenhangsanxuat + "','" + thongtinhangsanxuat + "')");
        }

        public int Delete_HangSX(string mahangsanxuat)
        {
            return conDB.executeNonQuery("delete HangSanXuat where ma_hangsanxuat = '" + mahangsanxuat + "' ");
        }

        public int Update_HangSX(string mahangsanxuat, string tenhangsanxuat, string thongtinhangsanxuat)
        {
            return conDB.executeNonQuery("update HangSanXuat set ma_hangsanxuat = '" + mahangsanxuat + "', ten_hangsanxuat = '" + tenhangsanxuat + "', thongtin_hangsanxuat = '" + thongtinhangsanxuat + "' ");
        }

        public DataTable SearchByCode_HangSX(string mahangsanxuat)
        {
            string sql = "select *from HangSanXuat where ma_hangsanxuat = '" + mahangsanxuat + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        public DataTable SearchByName_HangSX(string tenhangsanxuat)
        {
            string sql = "select *from HangSanXuat where ten_hangsanxuat = '" + tenhangsanxuat + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
    }
}
