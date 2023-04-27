package bai1.servlet;

import bai1.model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer("Mai Văn Hoàng", "1983-08-20", "Hà Nội","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaEi2audUIGOK8_fWSnBRxCIC-N74LbcrRD0bt2u5ngO506yF9c6c-yCl81RqdBqbiRjQ&usqp=CAU"));
        customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắn Giang","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCuXLV5DgP9klqpdtKYM6CnvCP_zOEnf3eHrQg_Ea-Ui6UPS-xKYoLo13b2bXxthQTmUs&usqp=CAU"));
        customerList.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUP1iuoI7XpYvdtlWT9Pop3JmiKhnA2ZWjJw&usqp=CAU"));
        customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn4Ti3S_viiCxY8s63qtDeaXeLhwJzoOfgWw&usqp=CAU"));
        customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội","https://vapa.vn/wp-content/uploads/2022/12/anh-nguoi-mau-dep-nhat-001.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
