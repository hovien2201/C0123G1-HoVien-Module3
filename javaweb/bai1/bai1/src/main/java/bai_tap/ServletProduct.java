package bai_tap;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletProduct", value = "/servletproduct")
public class ServletProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("Description");
        float price = Float.parseFloat(request.getParameter("Price"));
        int discount_percent = Integer.parseInt(request.getParameter("Discount Percent"));
        float discount= (float) (price*discount_percent*0.01);
        float total =price-discount;

        PrintWriter writer=response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Description: "+description +"<br>");
        writer.println("Price: "+price+"<br>");
        writer.println("Discount Percent: "+discount_percent+"<br>");
        writer.println("Discount: "+discount +"<br>");
        writer.println("Total: "+total);
        writer.println("</html>");
    }
}
