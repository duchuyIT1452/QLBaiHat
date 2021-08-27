using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATA
{
    public class GetData_Album
    {
        ConnectDB conn = new ConnectDB();
        public DataTable getAlbum()
        {
            String sql = "SELECT * FROM ALBUM";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
        public void themAlbum(string ma_album, string ten_album, DateTime namphathanh)
        {
            String sql = "INSERT INTO ALBUM VALUES('" + ma_album + "',N'" + ten_album + "','" + namphathanh + "')";
            conn.ExecuteNonQuery(sql);
        }
        public void suaAlbum(string ma_album, string ten_album, DateTime namphathanh)
        {
            String sql = "UPDATE ALBUM SET ten_album=N'" + ten_album + "',namphathanh='" + namphathanh + "'WHERE ma_album='" + ma_album + "'";
            conn.ExecuteNonQuery(sql);
        }
        public void xoaAlbum(string ma_album)
        {
            String sql = "DELETE ALBUM WHERE ma_album = '" + ma_album + "'";
            conn.ExecuteNonQuery(sql);
        }
        public DataTable timkiemAlbumTheoMa(string ma_album)
        {
            String sql = "SELECT * FROM ALBUM WHERE ma_album='" + ma_album + "'";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
        // Tìm kiếm gần đúng
        public DataTable timkiemAlbumTheoTen(string ten_album)
        {
            String sql = "SELECT * FROM ALBUM WHERE ten_album ='" + ten_album + "'";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
        public DataTable timkiemAlbumTheoNam(string namphathanh)
        {
            String sql = "SELECT * FROM ALBUM WHERE namphathanh ='" + namphathanh + "'";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
        public DataTable findAlbum(string ten_album)
        {
            String sql = "SELECT ma_album, ten_album, namphathanh FROM ALBUM WHERE ten_album like N'%" + ten_album + "%'";
            DataTable dt = new DataTable();
            dt = conn.GetTable(sql);
            return dt;
        }
    }
}
