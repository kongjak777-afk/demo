package com.example.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "loginservlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        // id: "user"   , pw : "1234"
        if ("user".equals(id) && "1234".equals(pw)) {
            response.sendRedirect("welcome.jsp?userName=" + id );
        } else {
            response.sendRedirect("loginForm.jsp?error=1");
        }

    }
}