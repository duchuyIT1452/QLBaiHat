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
        public void Insert_HangSX(string ma_hangsanxuat, string ten_hangsanxuat, string thongtin_hangsanxuat)
        {
            string sql = "Insert into HANGSANXUAT values('" + ma_hangsanxuat + "',N'" + ten_hangsanxuat + "',N'" + thongtin_hangsanxuat + "')";
            conDB.ExecuteNonQuery(sql);
        }

        public void Delete_HangSX(string ma_hangsanxuat)
        {
            string sql = "delete HANGSANXUAT where ma_hangsanxuat = '" + ma_hangsanxuat + "' ";
            conDB.ExecuteNonQuery(sql);
        }

        public void Update_HangSX(string ma_hangsanxuat, string ten_hangsanxuat, string thongtin_hangsanxuat)
        {
            string sql = "update HANGSANXUAT set ma_hangsanxuat = '" + ma_hangsanxuat + "', ten_hangsanxuat = N'" + ten_hangsanxuat + "', thongtin_hangsanxuat = N'" + thongtin_hangsanxuat + "' ";
            conDB.ExecuteNonQuery(sql);
        }

        public DataTable SearchByCode_HangSX(string ma_hangsanxuat)
        {
            string sql = "select *from HANGSANXUAT where ma_hangsanxuat = '" + ma_hangsanxuat + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        public DataTable SearchByName_HangSX(string ten_hangsanxuat)
        {
            string sql = "select *from HANGSANXUAT where ten_hangsanxuat = '" + ten_hangsanxuat + "' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
    }
}
