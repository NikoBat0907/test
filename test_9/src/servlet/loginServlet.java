package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");


        request.getSession().setAttribute("ID",id);

        if(id.equals("abc") && pwd.equals("123") ){
            response.sendRedirect("success.jsp");//重定向
            //request.getRequestDispatcher("success.jsp").forward(request,response);//服务器转发
        }
        else {
            response.sendRedirect("error.jsp");
            //request.getRequestDispatcher("error.jsp").forward(request,response);
        }
    }
}
