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

        public BaiHat_BUS()
        {
        }

        public BaiHat_BUS(string maBaiHat)
        {
            this.maBaiHat = maBaiHat;
        }

        public BaiHat_BUS( string maBaiHat, string tenBaiHat, string maTheLoai, string maCaSi, string maAlbum, string loiBaiHat, string maHangSanXuat, string maTacGia)
        {
            this.maBaiHat = maBaiHat;
            this.tenBaiHat = tenBaiHat;
            this.maTheLoai = maTheLoai;
            this.maCaSi = maCaSi;
            this.maAlbum = maAlbum;
            this.loiBaiHat = loiBaiHat;
            this.maHangSanXuat = maHangSanXuat;
            this.maTacGia = maTacGia;
        }
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
        public DataTable getBaiHat()
        {
            return BaiHat.getAllBaiHat();
        }

        public DataTable getBaiHatHome()
        {
            return BaiHat.getAllBaiHatFormChinh();
        }

        public DataTable getBaiHatByMaBaiHat(string maBaiHat)
        {
            return BaiHat.SearchByMa(maBaiHat);
        }
        public void themBaiHat(String maBaiHat, String tenBaiHat,String maTheLoai, String maAlbum,String maCaSi,String maTacGia,String maHangSanXuat,String loiBaiHat )
        {
            BaiHat.InsertBaiHat(maBaiHat,tenBaiHat, maTheLoai, maAlbum, maCaSi,  maTacGia, maHangSanXuat, loiBaiHat);
        }
        public DataTable getBaiHatByAllKey(string maTheLoai, string maAlbum, string maCaSi, string maTacGia, string maHangSanXuat)
        {
            return BaiHat.SearchByAllKey(maTheLoai, maAlbum, maCaSi, maTacGia, maHangSanXuat);
        }
        public void xoaBaiHat(string maBaiHat)
        {
            BaiHat.DeleteBaiHat(maBaiHat);
        }
        public void capNhatBaiHat()
        {
            BaiHat.UpdateBaiHat(maBaiHat, tenBaiHat, maTheLoai, maAlbum, maCaSi, maTacGia, maHangSanXuat, loiBaiHat);
        }
        public DataTable listBaiHatTheoAlbum(String maAlbum)
        {
            return BaiHat.listBaiHatTheoAlbum(maAlbum);
        }
        public DataTable listBaiHatTheoTheLoai(String maTheLoai)
        {
            return BaiHat.listBaiHatTheoTheLoai(maTheLoai);
        }
        public DataTable listBaiHatTheoTacGia(String maTacGia)
        {
            return BaiHat.SearchByTacGia(maTacGia);
        }
        public DataTable listBaiHatTheoHSX(String maHSX)
        {
            return BaiHat.SearchByHSX(maHSX);
        }
        public DataTable listBaiHatTheoCaSi(String maCaSi)
        {
            return BaiHat.SearchByCaSi(maCaSi);
        }

        public DataTable themBangBH(string maTG)
        {
            return BaiHat.themBangBH(maTG);
        }
    }
}
