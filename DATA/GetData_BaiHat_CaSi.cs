using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class GetData_BaiHat_CaSi
    {
        ConnectDB conDB = new ConnectDB();

        #region lấy ca sĩ bằng mã bài hát
        public DataTable getCaSi_By_MaBaiHat(String maBaiHat)
        {
            String sql = "Select * from BaiHat_CaSi b INNER JOIN CaSi c ON b.ma_casi = c.ma_casi Where ma_baihat='" + maBaiHat + "'";
            DataTable dt = new DataTable();
            dt = conDB.GetTable(sql);
            return dt;
        }
        #endregion
    }
}
