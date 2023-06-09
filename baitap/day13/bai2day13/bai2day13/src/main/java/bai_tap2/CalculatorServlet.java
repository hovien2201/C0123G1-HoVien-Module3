package bai_tap2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float fistOperand = Float.parseFloat(request.getParameter("fist_operand"));
        String calculation = request.getParameter("calculation");
        float secondOperand = Float.parseFloat(request.getParameter("second_operand"));

        float result;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result</h1>");
        writer.println("<h3>");
        switch (calculation) {
            case "addition":
                result = Calculator.addition(fistOperand, secondOperand);
                writer.println(fistOperand + " + " + secondOperand + " = " + result);
                break;
            case "subtraction":
                result = Calculator.subtraction(fistOperand, secondOperand);
                writer.println(fistOperand + " - " + secondOperand + " = " + result);
                break;
            case "multiplication":
                result = Calculator.multiplication(fistOperand, secondOperand);
                writer.println(fistOperand + " * " + secondOperand + " = " + result);
                break;
            case "division":
                if (secondOperand != 0) {
                    result = Calculator.division(fistOperand, secondOperand);
                    writer.println(fistOperand + " / " + secondOperand + " = " + result);
                }
                else {
                    writer.println("Không thể chia cho 0");
                }
                break;
        }
        writer.println("</h3>");
        writer.println("</html>");
    }
}
