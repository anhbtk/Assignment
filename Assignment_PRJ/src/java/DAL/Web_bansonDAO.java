/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author USER
 */
public class Web_bansonDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    String sql;

    public User getAcount() {
        try {
            User u = new User();
            sql = "select * from where username = ? and password = ?";
            conn = new BaseDAO().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                
            }
            
        } catch (Exception ex) {
            Logger.getLogger(Web_bansonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

            
        return null;

    }
}
