/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package savoria.admin.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import savoria.admin.account.AccountManager;

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
        if (AccountManager.findAccountByEmail(emailId) == null) {
            AccountManager.signUp(name, emailId, password, address, role, "verified");
            request.setAttribute("status_signup", "This account is under review. Please wait for the admin to assign previlege.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
            request.setAttribute("status_signup", "Email is in use. Please use another email.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
