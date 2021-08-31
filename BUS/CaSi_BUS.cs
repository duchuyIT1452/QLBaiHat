using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;

namespace BUS
{
    public class CaSi_BUS
    {
        GetData_CaSi CaSi = new GetData_CaSi();

        private string maCaSi;
        private string tenCaSi;
        private string thongTinCaSi;

        #region constructor
        public CaSi_BUS()
        {
        }
        #endregion

        #region getter, setter
        public string MaCaSi 
        {
            get { return maCaSi; }

            set
            {
                    maCaSi = value;
            }
        }
        public string TenCaSi 
        {
            get { return tenCaSi; }

            set
            {
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
        #endregion

        #region hàm lấy bảng dử liệu và các phương thức xử lý

        #region lấy toàn bộ ca sĩ trong bảng CASI
        public DataTable getCaSi()
        {
            return CaSi.getAllCaSi();
        }
        #endregion

        #region lấy ca sĩ bằng mã
        public DataTable getCasi_by_macasi(string macasi)
        {
            return CaSi.SearchByMa(macasi);
        }
        #endregion

        #region lấy ca sĩ bằng tên 
        public DataTable getCaSiByTen(string tenCaSi)
        {
            return CaSi.SearchByTen(tenCaSi);
        }
        #endregion

        #region thêm ca sĩ
        public void themCaSi(String maCaSi, String tenCaSi, String thongTinCaSi)
        {
            CaSi.InsertCaSi(maCaSi, tenCaSi, thongTinCaSi);
        }
        #endregion

        #region xoá ca sĩ bằng mã ca sĩ
        public void xoaCasi(string maCaSi)
        {
            CaSi.DeleteCaSi(maCaSi);
        }
        #endregion

        #region cập nhật ca sĩ
        public void capNhatCaSi(String maCaSi, String tenCaSi, String thongTinCaSi)
        {
            CaSi.UpdateCaSi(maCaSi, tenCaSi, thongTinCaSi);
        }
        #endregion

        #endregion

    }
}
