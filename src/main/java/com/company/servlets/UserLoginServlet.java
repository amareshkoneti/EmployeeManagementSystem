package com.company.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@SuppressWarnings("serial")
public class UserLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Simulate login logic (replace with actual authentication)
        if ("user04".equals(username) && "using".equals(password)) {
            // Redirect to UserViewServlet to fetch employee data
            response.sendRedirect(request.getContextPath() + "/user-view");
        } else {
            // If login fails, redirect back to the login page with an error message
            response.sendRedirect(request.getContextPath() + "/login-error.jsp");
        }
    }
}
