/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package citprog.restaurantweb.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author buitu
 */
@WebServlet(name = "SendCode", urlPatterns = {"/SendCode"})
public class SendCode extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Notice");
        String emailId = request.getParameter("emailId");
        System.out.println(emailId);
        SendEmail sm = new SendEmail();
        String code = sm.getRandom();
        AccountDAO accountDAO = new AccountDAO();
        Account account = accountDAO.getAccountByEmail(emailId);
        if (account == null) {
            System.out.println("Account is null");
        }
        account.setCode(code);
        request.getSession().setAttribute("code", code);

        // Store the current time in milliseconds
        long currentTimeMillis = System.currentTimeMillis();
        request.getSession().setAttribute("codeTime", currentTimeMillis);

        // Send the email
        boolean emailSent = sm.sendEmail(account);
        System.out.println("Email sent: " + emailSent);
    }
}
