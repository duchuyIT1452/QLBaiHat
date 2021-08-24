using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
//using BUS;


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
            String sql1 = "Insert Into BaiHat_CaSi Values('" + maBaiHat + "', '" + maCaSi + "')";
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
            String sql = "Select ten_baihat, loi_baihat from baihat where ma_tacgia='" + maTacGia + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable SearchByHSX(String maHSX)
        {
            String sql = "Select ten_baihat, loi_baihat from BaiHat Where ma_hangsanxuat='" + maHSX + "'";
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
        public DataTable listBaiHatTheoAlbum(String maAlbum)
        {
            String sql = "SELECT ten_baihat, ten_casi, ten_theloai, loi_baihat FROM BAIHAT INNER JOIN CASI ON BAIHAT.ma_casi = CASI.ma_casi INNER JOIN THELOAI ON BAIHAT.ma_theloai = THELOAI.ma_theloai WHERE ma_album='" + maAlbum + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable listBaiHatTheoTheLoai(String maTheLoai)
        {
            String sql = "SELECT ten_baihat,ten_album, ten_casi, loi_baihat FROM BAIHAT INNER JOIN ALBUM ON BAIHAT.ma_album = ALBUM.ma_album INNER JOIN CASI ON BAIHAT.ma_casi = CASI.ma_casi WHERE ma_TheLoai='" + maTheLoai + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        public DataTable themBangBH(string maTG)
        {
            string sql = "select ten_baihat, ten_casi, ten_hangsanxuat, loi_baihat from BAIHAT Inner join HANGSANXUAT ON BAIHAT.ma_hangsanxuat = HANGSANXUAT.ma_hangsanxuat INNER JOIN CASI ON BAIHAT.ma_casi = CASI.ma_casi WHERE ma_tacgia = '" + maTG + "'";
            //String sql = "select BAIHAT.ten_baihat, CASI.ten_casi,HANGSANXUAT.ten_hangsanxuat, BAIHAT.loi_baihat from BAIHAT INNER JOIN HANGSANXUAT ON BAIHAT.ma_hangsanxuat=HANGSANXUAT.ma_hangsanxuat INNER JOIN TACGIA ON BAIHAT.ma_tacgia=TACGIA.ma_tacgia INNER JOIN CASI ON CASI.ma_casi=BAIHAT.ma_casi WHERE TACGIA.ma_tacgia=@matg";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }

    }
}
