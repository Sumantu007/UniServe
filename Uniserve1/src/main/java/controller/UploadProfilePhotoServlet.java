package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/uploadProfilePhoto")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024,
    maxFileSize = 5 * 1024 * 1024,
    maxRequestSize = 10 * 1024 * 1024
)
public class UploadProfilePhotoServlet extends HttpServlet {

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


        Part filePart =
                request.getPart("profilePhoto");

        if (filePart == null ||
            filePart.getSize() == 0) {

            response.sendRedirect("profile.jsp");

            return;
        }


        String fileName =
                filePart.getSubmittedFileName();


        // Remove unsafe characters
        fileName =
                new File(fileName)
                .getName();


        // Create unique file name
        String extension = "";

        int dot =
                fileName.lastIndexOf(".");

        if (dot >= 0) {
            extension =
                    fileName.substring(dot);
        }


        String newFileName =
                "profile_" +
                System.currentTimeMillis() +
                extension;


        String uploadPath =
                getServletContext()
                .getRealPath("/uploads");


        File uploadDir =
                new File(uploadPath);


        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }


        String fullPath =
                uploadPath +
                File.separator +
                newFileName;


        filePart.write(fullPath);


        String photoPath =
                "uploads/" + newFileName;


        session.setAttribute(
                "profilePhoto",
                photoPath
        );


        response.sendRedirect("profile.jsp");
    }
}