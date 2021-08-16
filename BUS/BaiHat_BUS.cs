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

        public void themBaiHat()
        {
            BaiHat.InsertBaiHat(maBaiHat,tenBaiHat, maTheLoai, maAlbum, maCaSi,  maTacGia, maHangSanXuat, loiBaiHat);
        }
        public void xoaBaiHat()
        {
            BaiHat.DeleteBaiHat(MaBaiHat);
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
    }
}
