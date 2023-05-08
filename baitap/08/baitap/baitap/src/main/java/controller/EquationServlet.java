package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EquationServlet", value = "/equation")
public class EquationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "":
                giaiPhuongTrinhBac2(request,response);
                break;

        }
    }

    private void giaiPhuongTrinhBac2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int a= Integer.parseInt(request.getParameter("a"));
        int b= Integer.parseInt(request.getParameter("b"));
        int c= Integer.parseInt(request.getParameter("c"));
        String mess ="";
        if (a == 0) {
            if (b == 0) {
                mess="Phương trình vô nghiệm!";
            } else {
                mess= "Phuong trinh co 1 nghiem: x= " + (-c / b);
            }
            return;
        }

        float delta = b*b - 4*a*c;
        float x1;
        float x2;

        if (delta > 0) {
            x1 = (float) ((-b + Math.sqrt(delta)) / (2*a));
            x2 = (float) ((-b - Math.sqrt(delta)) / (2*a));
           mess="Phương trình có 2 nghiệm là: "
                    + "x1 = " + x1 + " và x2 = " + x2;
        } else if (delta == 0) {
            x1 = (-b / (2 * a));
            mess="Phương trình có nghiệm kép: "
                    + "x1 = x2 = " + x1;
        } else {
            mess="Phương trình vô nghiệm!";
        }
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
