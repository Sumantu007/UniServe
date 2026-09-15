package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.user;
import util.PasswordUtil;

public class UserDAO {

    public boolean emailExists(String email) throws Exception {
        String sql = "SELECT 1 FROM users WHERE email = ? LIMIT 1";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        }
    }

    public boolean mobileExists(String mobile) throws Exception {
        String sql = "SELECT 1 FROM users WHERE mobile = ? LIMIT 1";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, mobile);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        }
    }

    public boolean registerUser(user u) throws Exception {
        String sql = "INSERT INTO users (full_name, mobile, email, password_hash) VALUES (?, ?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, u.getFullName());
            ps.setString(2, u.getMobile());
            ps.setString(3, u.getEmail());
            ps.setString(4, PasswordUtil.sha256(u.getPassword()));
            return ps.executeUpdate() == 1;
        }
    }

    public user checkLogin(String loginId, String password) throws Exception {
        String sql = "SELECT id, full_name, mobile, email FROM users "
                   + "WHERE (email = ? OR mobile = ?) AND password_hash = ? LIMIT 1";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            String hash = PasswordUtil.sha256(password);
            ps.setString(1, loginId);
            ps.setString(2, loginId);
            ps.setString(3, hash);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user u = new user();
                    u.setId(rs.getInt("id"));
                    u.setFullName(rs.getString("full_name"));
                    u.setMobile(rs.getString("mobile"));
                    u.setEmail(rs.getString("email"));
                    return u;
                }
            }
        }
        return null;
    }
}
