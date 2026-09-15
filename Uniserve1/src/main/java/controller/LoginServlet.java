package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.UserDAO;
import model.user;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String loginId = request.getParameter("loginId");
        String password = request.getParameter("password");

        if (loginId == null || password == null || loginId.trim().isEmpty() || password.isEmpty()) {
            response.sendRedirect("login.jsp?error=empty");
            return;
        }

        try {
            user u = new UserDAO().checkLogin(loginId.trim(), password);
            if (u != null) {
                HttpSession session = request.getSession(true);
                session.setAttribute("userId", u.getId());
                session.setAttribute("userName", u.getFullName());
                session.setAttribute("userEmail", u.getEmail());
                session.setAttribute("userMobile", u.getMobile());
                session.setMaxInactiveInterval(30 * 60);
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=db");
        }
    }
}
