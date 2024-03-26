package citprog.restaurantweb.login;

import java.io.IOException;
import java.util.ArrayList;
import citprog.restaurantweb.resourcesmanagement.MenuDAO;
import citprog.restaurantweb.resourcesmanagement.Menu;
import citprog.restaurantweb.resourcesmanagement.MenuManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "Menu", urlPatterns = { "/Menu" })
public class RefreshMenu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Menu> menuList = MenuManager.getMenuList();
        session.setAttribute("menuList", menuList);
        //response.sendRedirect(request.getContextPath() + "/menu-1.jsp?refresh=" + System.currentTimeMillis());
        request.getRequestDispatcher("/menu-1.jsp").forward(request, response);
    }
}
