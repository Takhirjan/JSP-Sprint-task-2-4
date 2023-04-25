package Servlets;

import DB.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;

import java.io.IOException;


@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    int id=-1;
    try{
      id=Integer.parseInt(req.getParameter("task_id"));
    }catch (Exception e){
      e.printStackTrace();
    }
    Task task= DBManager.getTask((long) id);
    req.setAttribute("tasks",task);
    req.getRequestDispatcher("details.jsp").forward(req,resp);

  }
}
