package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.DBConnection;

public class KYCDao {

    // =====================================================
    // SAVE OR UPDATE KYC
    // =====================================================

    public boolean saveOrUpdateKYC(
            String email,
            String idType,
            String uniqueId,
            String address) {

        String checkSql =
                "SELECT kyc_id FROM user_kyc WHERE user_email = ?";

        String insertSql =
                "INSERT INTO user_kyc " +
                "(user_email, id_type, unique_id, address) " +
                "VALUES (?, ?, ?, ?)";

        String updateSql =
                "UPDATE user_kyc SET " +
                "id_type = ?, " +
                "unique_id = ?, " +
                "address = ? " +
                "WHERE user_email = ?";

        try {

            Connection con = DBConnection.getConnection();

            // Check whether KYC already exists
            PreparedStatement checkPs =
                    con.prepareStatement(checkSql);

            checkPs.setString(1, email);

            ResultSet rs = checkPs.executeQuery();

            boolean exists = rs.next();

            rs.close();
            checkPs.close();


            int result;

            // =============================================
            // UPDATE EXISTING KYC
            // =============================================

            if (exists) {

                PreparedStatement ps =
                        con.prepareStatement(updateSql);

                ps.setString(1, idType);
                ps.setString(2, uniqueId);
                ps.setString(3, address);
                ps.setString(4, email);

                result = ps.executeUpdate();

                ps.close();

            }

            // =============================================
            // INSERT NEW KYC
            // =============================================

            else {

                PreparedStatement ps =
                        con.prepareStatement(insertSql);

                ps.setString(1, email);
                ps.setString(2, idType);
                ps.setString(3, uniqueId);
                ps.setString(4, address);

                result = ps.executeUpdate();

                ps.close();
            }

            con.close();

            return result > 0;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }


    // =====================================================
    // GET KYC INFORMATION
    // =====================================================

    public ResultSet getKYCByEmail(String email) {

        String sql =
                "SELECT * FROM user_kyc " +
                "WHERE user_email = ?";

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, email);

            return ps.executeQuery();

        } catch (Exception e) {

            e.printStackTrace();

            return null;
        }
    }


    // =====================================================
    // CHECK WHETHER USER HAS KYC
    // =====================================================

    public boolean hasKYC(String email) {

        String sql =
                "SELECT kyc_id FROM user_kyc " +
                "WHERE user_email = ?";

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, email);

            ResultSet rs =
                    ps.executeQuery();

            boolean exists = rs.next();

            rs.close();
            ps.close();
            con.close();

            return exists;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }


    // =====================================================
    // DELETE KYC
    // =====================================================

    public boolean deleteKYC(String email) {

        String sql =
                "DELETE FROM user_kyc " +
                "WHERE user_email = ?";

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, email);

            int result =
                    ps.executeUpdate();

            ps.close();
            con.close();

            return result > 0;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }
}