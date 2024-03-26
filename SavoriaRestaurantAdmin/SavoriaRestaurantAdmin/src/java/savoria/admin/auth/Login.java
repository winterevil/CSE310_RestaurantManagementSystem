/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package savoria.admin.auth;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import savoria.admin.account.Account;
import savoria.admin.account.AccountDAO;
import savoria.admin.account.AccountManager;
import savoria.admin.order.OrderDAO;
import savoria.admin.product.MenuDAO;
import savoria.admin.product.MenuManager;

/**
 *
 * @author buitu
 */
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailId = request.getParameter("emailId");
        String password = request.getParameter("password");
        Account account = AccountManager.login(emailId, password);
        if (account != null && (AccountManager.isAdmin(emailId) || AccountManager.isEmployee(emailId))) {
            HttpSession session = request.getSession();

            session.setAttribute("account", account);
            session.setAttribute("highestSpentUser", AccountManager.getUserWithHighestSpent());
            session.setAttribute("numberOfAccounts", AccountManager.getTotalNumberOfAccounts());
            session.setAttribute("numberOfOrders", AccountManager.getTotalNumberOfOrders());
            session.setAttribute("totalNumberOfMenuItems", MenuManager.getTotalNumberOfMenuItems());

            AccountDAO.readToJson();
            MenuDAO.readDetailMenuToJson();
            OrderDAO.readToJson();
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            request.setAttribute("status", "Invalid email or password or you're not an admin.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
