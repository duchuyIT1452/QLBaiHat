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

        #region lấy tất cả bài hát
        public DataTable getAllBaiHat()
        {
            String sql = "Select * from BaiHat";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát ra form chính
        public DataTable getAllBaiHatFormChinh()
        {
            String sql = "Select ma_baihat, ten_baihat, ten_album, ten_casi, ten_theloai, loi_baihat from BaiHat b INNER JOIN album a ON b.ma_album = a.ma_album INNER JOIN CaSi c ON b.ma_casi = c.ma_casi INNER JOIN TheLoai t ON b.ma_theloai = t.ma_theloai";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region thêm bài hát
        public void InsertBaiHat(String maBaiHat, String tenBaiHat, String maTheLoai, String maAlbum, String maCaSi, String maTacGia, String maHSX, String loiBaiHat)
        {
            String sql = "Insert Into BaiHat Values('" + maBaiHat + "', '" + tenBaiHat + "', '" + maTheLoai + "','" + maAlbum + "','" + maCaSi + "','" + maTacGia + "','" + maHSX + "','" + loiBaiHat + "')";
            String sql1 = "Insert Into BaiHat_CaSi Values('" + maCaSi + "', '" + maBaiHat + "')";
            conDB.ExecuteNonQuery(sql);
            conDB.ExecuteNonQuery(sql1);
        }
        #endregion

        #region lấy bài hát bằng lời bài hát
        public DataTable getBaiHatByLoiBaiHat(String loiBaiHat)
        {
            String sql = "Select ma_baihat, ten_baihat, loi_baihat from baihat where loi_baihat like '%" + loiBaiHat + "%'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát bằng mã bài hát
        public DataTable SearchByMa(String maBaiHat)
        {
            String sql = "Select * from BaiHat Where ma_BaiHat='" + maBaiHat + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát bằng tên bài hát
        public DataTable SearchByTen(String tenBaiHat)
        {
            String sql = "Select ma_baihat, ten_baihat, loi_baihat from BaiHat Where ten_BaiHat like '%" + tenBaiHat + "%'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát bằng mã tác giả
        public DataTable SearchByTacGia(String maTacGia)
        {
            String sql = "Select ten_baihat, loi_baihat from baihat where ma_tacgia='" + maTacGia + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát bằng mã ca sĩ
        public DataTable SearchByCaSi(String maCaSi)
        {
            String sql = "Select ten_baihat,loi_baihat from baihat_casi b INNER JOIN baihat bh ON b.ma_baihat = bh.ma_baihat INNER JOIN casi c ON b.ma_casi=c.ma_casi where c.ma_casi ='"+maCaSi+"' ";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát bằng mã hãng sản xuất
        public DataTable SearchByHSX(String maHSX)
        {
            String sql = "Select ten_baihat, loi_baihat from BaiHat Where ma_hangsanxuat='" + maHSX + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát bằng tất cả các mã(foreign key)
        public DataTable SearchByAllKey(String maTheLoai, String maAlbum, String maCaSi, String maTacGia, String maHangSanXuat)
        {
            String sql = "Select * from BaiHat Where " + maTheLoai + maAlbum + maCaSi + maTacGia + maHangSanXuat;
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region cập nhật bài hát
        public void UpdateBaiHat(String maBaiHat, String tenBaiHat, String maTheLoai, String maAlbum, String maCaSi, String maTacGia, String maHSX, String loiBaiHat)
        {
            String sql = "Update BaiHat Set ma_album='" + maAlbum + "',ma_theloai='" + maTheLoai + "', ma_tacgia='"
                + maTacGia + "', ma_hangsanxuat='" + maHSX + "',ma_casi='" + maCaSi + "', ten_baihat=N'" + tenBaiHat + "',loi_baihat=N'" + loiBaiHat + "' Where ma_baihat='" + maBaiHat + "'";
            String sql1 = "Update BaiHat_Casi set ma_casi = '" + maCaSi + "' where ma_baihat = '" + maBaiHat + "'";
            conDB.ExecuteNonQuery(sql);
            conDB.ExecuteNonQuery(sql1);
        }
        #endregion

        #region xoá bài hát bằng mã bài hát
        public void DeleteBaiHat(String maBaiHat)
        {
            String sql = "Delete BaiHat Where ma_BaiHat='" + maBaiHat + "'";
            String sql1 = "Delete BaiHat_CaSi Where ma_BaiHat='" + maBaiHat + "'";
            conDB.ExecuteNonQuery(sql1);
            conDB.ExecuteNonQuery(sql);
        }
        #endregion

        #region lấy bài hát bằng mã album
        public DataTable listBaiHatTheoAlbum(String maAlbum)
        {
            String sql = "SELECT ma_baihat, ten_baihat,loi_baihat FROM BAIHAT WHERE ma_album='" + maAlbum + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion

        #region lấy bài hát bằng mã thể loại
        public DataTable listBaiHatTheoTheLoai(String maTheLoai)
        {
            String sql = "SELECT ma_baihat,ten_baihat, loi_baihat FROM BAIHAT WHERE ma_TheLoai='" + maTheLoai + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
    }
}
