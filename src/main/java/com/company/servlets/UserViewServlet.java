package com.company.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.Employee;

@SuppressWarnings("serial")
public class UserViewServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("UserViewServlet doGet called.");
        
        List<Employee> employees = new ArrayList<>();
        
        try (Connection conn = DatabaseConnection.getConnection()) {
            System.out.println("Database connection established.");
            
            // Adjust the SQL query if you need specific filtering or ordering
            String sql = "SELECT e.id, e.name, e.email, e.phone, e.role, e.salary, e.department_id, d.name AS department_name " +
                         "FROM Employee e LEFT JOIN Department d ON e.department_id = d.id";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            
            System.out.println("SQL Query executed: " + sql);
            
            while (rs.next()) {
                Employee employee = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("role"),
                        rs.getDouble("salary"),
                        rs.getInt("department_id"),
                        rs.getString("department_name"));
                employees.add(employee);
            }
            
            System.out.println("Number of employees retrieved: " + employees.size());
            request.setAttribute("employees", employees);
            request.getRequestDispatcher("/user-view.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
