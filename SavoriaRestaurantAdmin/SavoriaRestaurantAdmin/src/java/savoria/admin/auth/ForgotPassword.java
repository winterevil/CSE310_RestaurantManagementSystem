/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package savoria.admin.auth;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import savoria.admin.account.AccountManager;

/**
 *
 * @author buitu
 */
public class ForgotPassword extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ForgotPassword() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailId = request.getParameter("emailId");
        String password = request.getParameter("recoverpassword");
        String confirmPassword = request.getParameter("confirmpassword");
        String enteredCode = request.getParameter("code");

        if (!AccountManager.isAdmin(emailId) || !AccountManager.isEmployee(emailId)) {
            System.out.println(!AccountManager.isAdmin(emailId) || !AccountManager.isEmployee(emailId));
            request.setAttribute("status", "You are not authorized to change password. Please, check your access level.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        if (AccountManager.findAccountByEmail(emailId) != null) {
            String sessionCode = (String) request.getSession().getAttribute("code");
            Long codeTime = (Long) request.getSession().getAttribute("codeTime");

            if (sessionCode != null && sessionCode.equals(enteredCode)) {
                // Check if the code is expired
                long currentTimeMillis = System.currentTimeMillis();
                if ((currentTimeMillis - codeTime) > 5 * 60 * 1000) {
                    request.setAttribute("status", "Code expired.");
                } else {
                    if (password.equals(confirmPassword)) {
                        AccountManager.changePassword(emailId, confirmPassword);
                        request.setAttribute("status", "Password changed successfully.");
                    } else {
                        request.setAttribute("status", "Passwords do not match.");
                    }
                }
            } else {
                request.setAttribute("status", "Invalid code.");
            }
        } else {
            request.setAttribute("status", "Account does not exist.");
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
