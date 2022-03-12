/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author USER
 */
public class ProductDAO {

    String sql;
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        try {
            sql = "select*from Product";
            conn = new BaseDAO().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getBytes(7), rs.getBytes(8), rs.getBytes(9), rs.getString(10));
                list.add(p);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

}
