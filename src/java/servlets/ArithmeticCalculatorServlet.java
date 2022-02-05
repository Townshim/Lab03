package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ArithmeticCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("arithOutput", "---");
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        Object result = 0;
        
        try {
            switch (request.getParameter("operation")) {
                case "+" : result = Integer.parseInt(first) + Integer.parseInt(second); break;
                case "-" : result = Integer.parseInt(first) - Integer.parseInt(second); break;
                case "*" : result = Integer.parseInt(first) * Integer.parseInt(second); break;
                case "%" : result = Integer.parseInt(first) % Integer.parseInt(second); break;
            } 
        } catch (NumberFormatException z) {
            result = "Invalid";
        }
        
        request.setAttribute("arithOutput", result);
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        return;
    }

}
