package Servlets;

import DB.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/task_manager")
      public class TaskManagerServlet extends HttpServlet {
      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ArrayList<Task> tasks= DBManager.getAllTask();
            request.setAttribute("tasky",tasks);
            request.getRequestDispatcher("/tasks.jsp").forward(request,response);
      }
}
