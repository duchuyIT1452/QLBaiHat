using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DATA
{
    public class GetData_HangSanXuat
    {
        ConnectDB conDB = new ConnectDB();

        #region Lấy tất cả các giá trị trong bảng HSX
        public DataTable getAllHangSX()
        {
            string sql = "select * from HANGSANXUAT";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region Các phương thức xử lý
        public void Insert_HangSX(string mahangsanxuat, string tenhangsanxuat, string thongtinhangsanxuat)
        {
            string sql = "Insert into HANGSANXUAT values('" + mahangsanxuat + "',N'" + tenhangsanxuat + "',N'" + thongtinhangsanxuat + "')";
            conDB.ExecuteNonQuery(sql);
        }

        public void Delete_HangSX(string mahangsanxuat)
        {
            string sql = "delete HANGSANXUAT where ma_hangsanxuat = '" + mahangsanxuat + "' ";
            conDB.ExecuteNonQuery(sql);
        }

        public void Update_HangSX(string mahangsanxuat, string tenhangsanxuat, string thongtinhangsanxuat)
        {
            string sql = "update HANGSANXUAT set ten_hangsanxuat = N'" + tenhangsanxuat + "', thongtin_hangsanxuat = N'" + thongtinhangsanxuat + "' Where ma_hangsanxuat = '" + mahangsanxuat + "' ";
            conDB.ExecuteNonQuery(sql);
        }
        #region thừa
        /*
        public DataTable SearchByCode_HangSX(string mahangsanxuat)
        {
            string sql = "select *from HANGSANXUAT where ma_hangsanxuat = '" + mahangsanxuat + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        public DataTable SearchByName_HangSX(string tenhangsanxuat)
        {
            string sql = "select *from HANGSANXUAT where ten_hangsanxuat = '" + tenhangsanxuat + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        */
        #endregion
        public DataTable timkiem_HSX(string tenhangsanxuat)
        {
            string sql = "select ma_hangsanxuat, ten_hangsanxuat, thongtin_hangsanxuat from HANGSANXUAT where ten_hangsanxuat like N'%" + tenhangsanxuat + "%' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        #endregion
    }
}
