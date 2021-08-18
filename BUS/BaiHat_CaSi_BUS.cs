using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;

namespace BUS
{
    class BaiHat_CaSi_BUS
    {
        GetData_BaiHat_CaSi BaiHat_CaSi = new GetData_BaiHat_CaSi();

        public DataTable getCaSi_By_MaBaiHat(string maBaiHat)
        {
            return BaiHat_CaSi.getCaSi_By_MaBaiHat(maBaiHat);
        }
    }
}
