using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class GetData_BaiHat
    {
        ConnectDB conDB = new ConnectDB();

        public DataTable getAllBaiHat()
        {
            String sql = "Select * from BaiHat";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable getAllBaiHatFormChinh()
        {
            String sql = "Select ten_baihat, ten_album, ten_casi, ten_theloai, loi_baihat from BaiHat b INNER JOIN album a ON b.ma_album = a.ma_album INNER JOIN CaSi c ON b.ma_casi = c.ma_casi INNER JOIN TheLoai t ON b.ma_theloai = t.ma_theloai";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

        public void InsertBaiHat(String maBaiHat, String tenBaiHat, String maTheLoai, String maAlbum, String maCaSi, String maTacGia, String maHSX, String loiBaiHat)
        {
            String sql = "Insert Into BaiHat Values('" + maBaiHat + "', '" + tenBaiHat + "', '" + maTheLoai + "','" + maAlbum + "','" + maCaSi + "','" + maTacGia + "','" + maHSX + "','" + loiBaiHat + "')";
            conDB.ExecuteNonQuery(sql);
        }

        public DataTable SearchByMa(String maBaiHat)
        {
            String sql = "Select * from BaiHat Where ma_BaiHat='" + maBaiHat + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable SearchByTen(String tenBaiHat)
        {
            String sql = "Select * from BaiHat Where ten_BaiHat='" + tenBaiHat + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable SearchByTheLoai(String maTheLoai)
        {
            String sql = "Select * from BaiHat Where ma_theloai='" + maTheLoai + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable SearchByAlbum(String maAlbum)
        {
            String sql = "Select * from BaiHat Where ma_album='" + maAlbum + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable SearchByTacGia(String maTacGia)
        {
            String sql = "Select * from BaiHat Where ma_tacgia='" + maTacGia + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable SearchByHSX(String maHSX)
        {
            String sql = "Select * from BaiHat Where ma_hangsanxuat='" + maHSX + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable SearchByLoiBaiHat(String loiBaiHat)
        {
            String sql = "Select * from BaiHat Where loi_baihat='" + loiBaiHat + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public void UpdateBaiHat(String maBaiHat, String tenBaiHat, String maTheLoai, String maAlbum, String maCaSi, String maTacGia, String maHSX, String loiBaiHat)
        {
            String sql = "Update BaiHat Set ma_BaiHat='" + maBaiHat + "',ten_BaiHat='" + tenBaiHat + "', ma_theloai='" + maTheLoai + "',ma_album='" + maAlbum + "',ma_casi='" + maCaSi + "',ma_tacgia='" + maTacGia + "',ma_hangsanxuat='" + maHSX + "',loi_BaiHat='" + loiBaiHat + "'";
            conDB.ExecuteNonQuery(sql);
        }
        public void DeleteBaiHat(String maBaiHat)
        {
            String sql = "Delete BaiHat Where ma_BaiHat='" + maBaiHat + "'";
            conDB.ExecuteNonQuery(sql);
        }
    }
}
