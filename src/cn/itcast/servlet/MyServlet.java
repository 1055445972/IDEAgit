package cn.itcast.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "MyServlet",urlPatterns= "/MyServlet")
public class MyServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("username", "itcast");
        request.setAttribute("password", "123");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/myjsp.jsp");
        dispatcher.forward(request, response);
    }
}
