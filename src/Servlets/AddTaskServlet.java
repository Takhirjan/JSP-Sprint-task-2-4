package Servlets;

import DB.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;

import java.io.IOException;


@WebServlet(value = "/add-task")
public class AddTaskServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("task_name");
        String deadlineDate=req.getParameter("task_date");
        String check= req.getParameter("check");
        String description=req.getParameter("task_description");

    Task task=new Task();
    task.setName(name);
    task.setDeadlineDate(deadlineDate);
    task.setDone(check);
    task.setDescription(description);

    DBManager.addTask(task);

    resp.sendRedirect("/task_manager");
  }
}
