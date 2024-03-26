/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package citprog.restaurantweb.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;

/**
 *
 * @author buitu
 */
public class SignUp extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public SignUp() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String emailId = request.getParameter("emailId");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String role = request.getParameter("role");
        String isAdmin = "0";
        String isManager = "0";
        String isStaff = "0";
        if ("isManager".equals(role)) {
            isManager = "1";
        } else if ("isStaff".equals(role)) {
            isStaff = "1";
        }

        AccountDAO accountDAO = new AccountDAO();

        //Check if account is exist
        if (!accountDAO.checkAccountExist(emailId)) {
            accountDAO.signUp(name, emailId, password, address, role, "verified");
            Account account = accountDAO.login(emailId, password);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
            request.setAttribute("status_signup", "Email is in use. Please use another email.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
