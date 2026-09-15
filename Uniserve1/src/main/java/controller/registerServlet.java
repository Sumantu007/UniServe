package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDAO;
import model.user;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String fullName = trim(request.getParameter("fullName"));
        String mobile = trim(request.getParameter("mobile"));
        String email = trim(request.getParameter("email"));
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (fullName == null || mobile == null || email == null
                || password == null || confirmPassword == null
                || fullName.isEmpty() || mobile.isEmpty() || email.isEmpty()
                || password.isEmpty() || confirmPassword.isEmpty()) {
            response.sendRedirect("register.jsp?error=empty");
            return;
        }

        if (!mobile.matches("[6-9][0-9]{9}")) {
            response.sendRedirect("register.jsp?error=mobile");
            return;
        }

        if (!email.matches("^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$")) {
            response.sendRedirect("register.jsp?error=email");
            return;
        }

        if (password.length() < 6) {
            response.sendRedirect("register.jsp?error=short");
            return;
        }

        if (!password.equals(confirmPassword)) {
            response.sendRedirect("register.jsp?error=match");
            return;
        }

        try {
            UserDAO dao = new UserDAO();
            if (dao.mobileExists(mobile)) {
                response.sendRedirect("register.jsp?error=mobileExists");
                return;
            }
            if (dao.emailExists(email)) {
                response.sendRedirect("register.jsp?error=emailExists");
                return;
            }

            user u = new user();
            u.setFullName(fullName);
            u.setMobile(mobile);
            u.setEmail(email);
            u.setPassword(password);

            if (dao.registerUser(u)) {
                response.sendRedirect("login.jsp?registered=1");
            } else {
                response.sendRedirect("register.jsp?error=db");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=db");
        }
    }

    private static String trim(String s) {
        return s == null ? null : s.trim();
    }
}
