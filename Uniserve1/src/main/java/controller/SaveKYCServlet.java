package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.KYCDao;

@WebServlet("/saveKYC")
public class SaveKYCServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String userEmail =
                (String) session.getAttribute("userEmail");

        if (userEmail == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String idType = request.getParameter("idType");
        String uniqueId = request.getParameter("uniqueId");
        String address = request.getParameter("address");

        KYCDao dao = new KYCDao();

        boolean success = dao.saveOrUpdateKYC(
                userEmail,
                idType,
                uniqueId,
                address
        );

        if (success) {

            session.setAttribute("kycIdType", idType);
            session.setAttribute("kycUniqueId", uniqueId);
            session.setAttribute("kycAddress", address);
        }

        response.sendRedirect("profile.jsp");
    }
}