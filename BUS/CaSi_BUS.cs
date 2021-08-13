using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;

namespace BUS
{
    class CaSi_BUS
    {
        GetData_CaSi CaSi = new GetData_CaSi();

        private string maCaSi;
        private string tenCaSi;
        private string thongTinCaSi;

        public CaSi_BUS()
        {
        }

        public CaSi_BUS(string maCaSi, string tenCaSi, string thongTinCaSi)
        {
            this.maCaSi = maCaSi;
            this.tenCaSi = tenCaSi;
            this.thongTinCaSi = thongTinCaSi;
        }

        public CaSi_BUS(string maCaSi)
        {
            this.maCaSi = maCaSi;
        }

        public string MaCaSi 
        {
            get { return maCaSi; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Nhập mã ca sĩ !");
                else
                    maCaSi = value;
            }
        }
        public string TenCaSi 
        {
            get { return tenCaSi; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Nhập tên ca sĩ !");
                else
                    tenCaSi = value;
            }
        }
        public string ThongTinCaSi 
        {
            get { return thongTinCaSi; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Chưa nhập thông tin ca sĩ !");
                else
                    if (value == "Chưa có thông tin cho ca sĩ !! == > bấm [Đồng ý] lần nữa để lưu ca sĩ này !")
                    thongTinCaSi = "";
                else
                    thongTinCaSi = value;
            }
        }

        #region hàm lấy bảng dử liệu và các phương thức xử lý
        public DataTable getCaSi()
        {
            return CaSi.getAllCaSi();
        }
        public DataTable getCasi_by_macasi(string macasi)
        {
            return CaSi.SearchByMa(macasi);
        }
        public void themCaSi()
        {
            CaSi.InsertCaSi(maCaSi, tenCaSi, thongTinCaSi);
        }
        public void xoaCasi()
        {
            CaSi.DeleteCaSi(maCaSi);
        }
        public void capnhapCaSi()
        {
            CaSi.UpdateCaSi(maCaSi, tenCaSi, thongTinCaSi);
        }
        #endregion

    }
}
