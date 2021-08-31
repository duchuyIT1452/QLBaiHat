using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;

namespace BUS
{
    public class BaiHat_BUS
    {
        GetData_BaiHat BaiHat = new GetData_BaiHat();

        private string maBaiHat;
        private string tenBaiHat;
        private string maTheLoai;
        private string maCaSi;
        private string maAlbum;
        private string loiBaiHat;
        private string maHangSanXuat;
        private string maTacGia;

        #region constructor
        public BaiHat_BUS()
        {
        }
        #endregion

        #region getter, setter
        public string MaBaiHat
        {
            get { return maBaiHat; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Nhập mã bài hát !");
                else
                    maBaiHat = value;
            }
        }
        public string TenBaiHat
        {
            get { return tenBaiHat; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Nhập tên bài hát !");
                else
                    tenBaiHat = value;
            }
        }
        public string LoiBaiHat
        {
            get { return loiBaiHat; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Chưa nhập lời cho bài hát !");
                else
                    if (value == "Chưa có lời cho bài hát !! == > bấm [Đồng ý] lần nữa để lưu bài hát này !")
                    loiBaiHat = "";
                else
                    loiBaiHat = value;
            }
        }
        #endregion

        #region lấy bài hát ra tabcontrol bài hát
        public DataTable getBaiHat()
        {
            return BaiHat.getAllBaiHat();
        }
        #endregion

        #region lấy bài hát ra home
        public DataTable getBaiHatHome()
        {
            return BaiHat.getAllBaiHatFormChinh();
        }
        #endregion

        #region lấy bài hát bằng lời bài hát
        public DataTable getBaiHatByLoiBaiHat(String loiBaiHat)
        {
            return BaiHat.getBaiHatByLoiBaiHat(loiBaiHat);
        }
        #endregion

        #region lấy bài hát bằng tên bài hát
        public DataTable getBaiHatByTenBaiHat(String tenBaiHat)
        {
            return BaiHat.SearchByTen(tenBaiHat);
        }
        #endregion

        #region lấy bài hát bằng mã bài hát
        public DataTable getBaiHatByMaBaiHat(string maBaiHat)
        {
            return BaiHat.SearchByMa(maBaiHat);
        }
        #endregion

        #region thêm bài hát
        public void themBaiHat(String maBaiHat, String tenBaiHat,String maTheLoai, String maAlbum,String maCaSi,String maTacGia,String maHangSanXuat,String loiBaiHat )
        {
            BaiHat.InsertBaiHat(maBaiHat,tenBaiHat, maTheLoai, maAlbum, maCaSi,  maTacGia, maHangSanXuat, loiBaiHat);
        }
        #endregion

        #region lấy bài hát theo toàn bộ các mã (foreign key)
        public DataTable getBaiHatByAllKey(string maTheLoai, string maAlbum, string maCaSi, string maTacGia, string maHangSanXuat)
        {
            return BaiHat.SearchByAllKey(maTheLoai, maAlbum, maCaSi, maTacGia, maHangSanXuat);
        }
        #endregion

        #region xoá bài hát theo mã bài hát
        public void xoaBaiHat(string maBaiHat)
        {
            BaiHat.DeleteBaiHat(maBaiHat);
        }
        #endregion

        #region cập nhật bài hát
        public void capNhatBaiHat(String maBaiHat, String tenBaiHat, String maTheLoai, String maAlbum, String maCaSi, String maTacGia, String maHSX, String loiBaiHat)
        {
            BaiHat.UpdateBaiHat(maBaiHat, tenBaiHat, maTheLoai, maAlbum, maCaSi, maTacGia, maHSX, loiBaiHat);
        }
        #endregion

        #region lấy bài hát theo mã album
        public DataTable listBaiHatTheoAlbum(String maAlbum)
        {
            return BaiHat.listBaiHatTheoAlbum(maAlbum);
        }
        #endregion

        #region lấy bài hát theo mã thể loại
        public DataTable listBaiHatTheoTheLoai(String maTheLoai)
        {
            return BaiHat.listBaiHatTheoTheLoai(maTheLoai);
        }
        #endregion

        #region lấy bài hát theo mã tác giả
        public DataTable listBaiHatTheoTacGia(String maTacGia)
        {
            return BaiHat.SearchByTacGia(maTacGia);
        }
        #endregion

        #region lấy bài hát theo mã hãng sản xuất
        public DataTable listBaiHatTheoHSX(String maHSX)
        {
            return BaiHat.SearchByHSX(maHSX);
        }
        #endregion

        #region lấy bài hát theo mã ca sĩ
        public DataTable listBaiHatTheoCaSi(String maCaSi)
        {
            return BaiHat.SearchByCaSi(maCaSi);
        }
        #endregion
    }
}
