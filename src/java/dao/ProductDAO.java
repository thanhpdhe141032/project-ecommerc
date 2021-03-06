/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Books;
import model.Clothes;
import model.History;
import model.Product;

/**
 *
 * @author DELL
 */
public class ProductDAO extends DBContext {

    public void addProduct(int i, int pcategory, String pname, String pimage, double pprice, String ptitle, String pdescription, int sid) {
        String sql = "insert into HE141449_product values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, i);
            ps.setInt(2, pcategory);
            ps.setString(3, pname);
            ps.setString(4, pimage);
            ps.setDouble(5, pprice);
            ps.setString(6, ptitle);
            ps.setString(7, pdescription);
            ps.setInt(8, sid);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deleteProduct(int pid) {
        String sql = "delete from HE141449_product where ma_san_pham = " + pid;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editProduct(Product p) {
        String query = "update HE141449_product\n"
                + "set ma_the_loai = ?,\n"
                + "ten_san_pham = ?,\n"
                + "hinh_anh = ?,\n"
                + "gia_ban = ?,\n"
                + "hang_san_xuat = ?,\n"
                + "thong_tin = ?\n"
                + "where ma_san_pham = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, p.getMa_the_loai());
            ps.setString(2, p.getTen_san_pham());
            ps.setString(3, p.getHinh_anh());
            ps.setDouble(4, p.getGia_ban());
            ps.setString(5, p.getHang_san_xuat());
            ps.setString(6, p.getThong_tin());
            ps.setInt(7, p.getMa_san_pham());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public ArrayList<Product> getList() {

        String sql = "select * from HE141449_product";
        ArrayList<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_the_loai = rs.getInt("ma_the_loai");
                String ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh = rs.getString("hinh_anh");
                Double gia_ban = rs.getDouble("gia_ban");
                String hang_san_xuat = rs.getString("hang_san_xuat");
                String thong_tin = rs.getString("thong_tin");
                list.add(new Product(ma_san_pham, ma_the_loai, ten_san_pham,
                        hinh_anh, gia_ban, hang_san_xuat, thong_tin));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public Integer getIDBySellName(String sellName) {
        String sql = "select user_id from HE141449_userID where username='" + sellName + "'";
        int selId = -1;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                selId = rs.getInt(1);
                return selId;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return selId;
    }

    public ArrayList<Product> getListBySellID(int sellID) {

        String sql = "select * from HE141449_product where Sell_ID=" + sellID + "";
        ArrayList<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_the_loai = rs.getInt("ma_the_loai");
                String ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh = rs.getString("hinh_anh");
                Double gia_ban = rs.getDouble("gia_ban");
                String hang_san_xuat = rs.getString("hang_san_xuat");
                String thong_tin = rs.getString("thong_tin");
                list.add(new Product(ma_san_pham, ma_the_loai, ten_san_pham,
                        hinh_anh, gia_ban, hang_san_xuat, thong_tin));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<Product> getListByCategory(int id) {

        String sql = "select * from HE141449_product where ma_the_loai='" + id + "'";
        ArrayList<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_the_loai = rs.getInt("ma_the_loai");
                String ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh = rs.getString("hinh_anh");
                Double gia_ban = rs.getDouble("gia_ban");
                String hang_san_xuat = rs.getString("hang_san_xuat");
                String thong_tin = rs.getString("thong_tin");
                list.add(new Product(ma_san_pham, ma_the_loai, ten_san_pham,
                        hinh_anh, gia_ban, hang_san_xuat, thong_tin));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public Product getProduct(int id) {

        String sql = "select * from HE141449_product where ma_san_pham='" + id + "'";
        Product p = new Product();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_the_loai = rs.getInt("ma_the_loai");
                String ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh = rs.getString("hinh_anh");
                Double gia_ban = rs.getDouble("gia_ban");
                String hang_san_xuat = rs.getString("hang_san_xuat");
                String thong_tin = rs.getString("thong_tin");
                p = new Product(ma_san_pham, ma_the_loai, ten_san_pham,
                        hinh_anh, gia_ban, hang_san_xuat, thong_tin);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public ArrayList<Product> searchList(String ten_san_pham, String ten_the_loai) {

        String sql = "";
        if (!ten_san_pham.equals("") && !ten_the_loai.equals("")) {
            sql = "SELECT * FROM HE141449_product, HE141449_category WHERE ten_san_pham like N'%" + ten_san_pham + "%' AND HE141449_product.ma_the_loai = HE141449_category.ma_the_loai AND ten_the_loai=N'" + ten_the_loai + "'";
        } else {
            if (ten_san_pham.equals("")) {
                sql = "SELECT * FROM HE141449_product, HE141449_category WHERE HE141449_product.ma_the_loai = HE141449_category.ma_the_loai AND ten_the_loai=N'" + ten_the_loai + "'";
            } else {
                if (ten_the_loai.equals("")) {
                    sql = "SELECT * FROM HE141449_product, HE141449_category WHERE ten_san_pham like  N'%" + ten_san_pham + "%' AND HE141449_product.ma_the_loai = HE141449_category.ma_the_loai";
                }
            }
        }
        ArrayList<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_the_loai = rs.getInt("ma_the_loai");
                ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh = rs.getString("hinh_anh");
                Double gia_ban = rs.getDouble("gia_ban");
                String hang_san_xuat = rs.getString("hang_san_xuat");
                String thong_tin = rs.getString("thong_tin");
                list.add(new Product(ma_san_pham, ma_the_loai, ten_san_pham,
                        hinh_anh, gia_ban, hang_san_xuat, thong_tin));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;

    }

    public ArrayList<Product> paging(int index) {
        String query = "SELECT * FROM HE141449_product order by HE141449_product.ma_san_pham  OFFSET ? ROWS  FETCH NEXT 4 ROWS ONLY ";

        ArrayList<Product> list = new ArrayList<>();
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, (index * 4 - 4));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_the_loai = rs.getInt("ma_the_loai");
                String ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh = rs.getString("hinh_anh");
                Double gia_ban = rs.getDouble("gia_ban");
                String hang_san_xuat = rs.getString("hang_san_xuat");
                String thong_tin = rs.getString("thong_tin");
                list.add(new Product(ma_san_pham, ma_the_loai, ten_san_pham,
                        hinh_anh, gia_ban, hang_san_xuat, thong_tin));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public int totalPage() {
        int total = 0;
        String query = "select count(*)\n"
                + "from HE141449_product";
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int totalA = rs.getInt(1);
                total = totalA / 4;
                if (totalA % 4 != 0) {
                    total++;
                }
            }
        } catch (Exception e) {
        }
        return total;
    }

    public ArrayList<Clothes> getAllClothes() throws Exception {
        String query = "SELECT * FROM HE141449_clothes";
        ArrayList<Clothes> listC = new ArrayList<>();

        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            listC.add(new Clothes(rs.getInt("id"), rs.getString("name"), rs.getString("size"), rs.getString("gender"),
                    rs.getString("description"), rs.getString("brand"), rs.getFloat("price"), rs.getString("img")));
        }
        return listC;
    }

    public ArrayList<Books> getAllBooks() throws Exception {
        String query = "SELECT * FROM HE141449_books";
        ArrayList<Books> listB = new ArrayList<>();

        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            listB.add(new Books(rs.getInt("id"), rs.getString("name"), rs.getString("author"), rs.getString("category"),
                    rs.getString("description"), rs.getFloat("price"), rs.getString("img")));
        }
        return listB;
    }

    public Books getBooksById(int id) throws Exception {
        String query = "SELECT * FROM HE141449_books WHERE id = " + id;

        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            return new Books(rs.getInt("id"), rs.getString("name"), rs.getString("author"), rs.getString("category"),
                    rs.getString("description"), rs.getFloat("price"), rs.getString("img"));
        }
        return null;
    }

    public Clothes getClothesById(int id) throws Exception {
        String query = "SELECT * FROM HE141449_clothes WHERE id = " + id;

        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            return new Clothes(rs.getInt("id"), rs.getString("name"), rs.getString("size"), rs.getString("gender"),
                    rs.getString("description"), rs.getString("brand"), rs.getFloat("price"), rs.getString("img"));
        }
        return null;
    }

    public ArrayList<Clothes> getClothesByCategoryId(int id) throws Exception {
        ArrayList<Clothes> list = new ArrayList<>();
        String query = "SELECT * FROM HE141449_clothes WHERE category_id = " + id;

        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            list.add(new Clothes(rs.getInt("id"), rs.getString("name"), rs.getString("size"), rs.getString("gender"),
                    rs.getString("description"), rs.getString("brand"), rs.getFloat("price"), rs.getString("img")));
        }
        return list;
    }

    public ArrayList<Books> getBooksByCategoryId(int id) throws Exception {
        ArrayList<Books> list = new ArrayList<>();
        String query = "SELECT * FROM HE141449_books WHERE category_id = " + id;

        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            list.add(new Books(rs.getInt("id"), rs.getString("name"), rs.getString("author"), rs.getString("category"),
                    rs.getString("description"), rs.getFloat("price"), rs.getString("img")));
        }
        return list;
    }

    public boolean deleteClothe(int id) {
        String sql = "delete from HE141449_clothes where id = " + id;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            return false;
        }
    }

    public boolean deleteBook(int id) {
        String sql = "delete from HE141449_books where id = " + id;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            return false;
        }
    }

    public boolean addBooks(Books p) {
        String sql = "INSERT INTO SE1435_PRJ321.dbo.HE141449_books "
                + "(name, author, category, description, img, price) "
                + "VALUES(?, ?, ?, ?, ?, ?);";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getAuthor());
            ps.setString(3, p.getCategory());
            ps.setString(4, p.getDiscription());
            ps.setString(5, p.getImg());
            ps.setFloat(6, p.getPrice());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateBooks(Books p, int id) {
        String sql = "UPDATE SE1435_PRJ321.dbo.HE141449_books"
                + " SET "
                + "name=?,"
                + "author=?,"
                + "category=?, "
                + "description=?, "
                + "img=?, "
                + "price=? "
                + "WHERE id = " + id;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getAuthor());
            ps.setString(3, p.getCategory());
            ps.setString(4, p.getDiscription());
            ps.setString(5, p.getImg());
            ps.setFloat(6, p.getPrice());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addClothes(Clothes p) {
        String sql = "insert into HE141449_clothes (name, [size], gender, description, price, brand, img)"
                + " values (?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getSize());
            ps.setString(3, p.getGender());
            ps.setString(4, p.getDescription());
            ps.setFloat(5, p.getPrice());
            ps.setString(6, p.getBrand());
            ps.setString(7, p.getImg());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateClothes(Clothes p, int id) {
        String sql = "UPDATE SE1435_PRJ321.dbo.HE141449_clothes "
                + "SET "
                + "name=?, "
                + "[size]=?, "
                + "gender=?, "
                + "description=?, "
                + "price=?, "
                + "brand=?, "
                + "img=? "
                + "WHERE id = " + id;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getSize());
            ps.setString(3, p.getGender());
            ps.setString(4, p.getDescription());
            ps.setFloat(5, p.getPrice());
            ps.setString(6, p.getBrand());
            ps.setString(7, p.getImg());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e.getCause());
            return false;
        }
    }

    public static void main(String[] args) {
        ArrayList<Product> product = new ArrayList<>();
        product = new ProductDAO().getList();

        for (Product product1 : product) {
            System.out.println("----------------" + product1.getHang_san_xuat());
        }

    }
}
