<%@ page import="models.Task" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-3">
    <div class="row">
        <h4 class="text-center">
            Welcome to the <%=siteName%>
        </h4>
    </div>
</div>
<div class="container">
<div class="row mt-2">
    <div class="col-12">
        <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
            + Add Task
        </button>

        <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Новое задание</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <%@include file="addform.jsp"%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row mt-3">
    <div class="col-12">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th style="width: 50%;">Наименование</th>
                <th>Крайник срок</th>
                <th style="width: 15%;">Выполнено</th>
                <th style="width: 10%;">DETAILS</th>
            </tr>
            </thead>
            <tbody>
            <%
                ArrayList<Task> zadaniya = (ArrayList<Task>) request.getAttribute("tasky");
                if(zadaniya!=null){
                    for(Task task : zadaniya){
            %>
            <tr>
                <td><%=task.getId()%></td>
                <td><%=task.getName()%></td>
                <td><%=task.getDeadlineDate()%></td>
                <td><%=task.getDone()%></td>
                <td>
                    <a class="btn btn-success btn-sm" href="/details?task_id=<%=task.getId()%>">DETAILS</a>

                </td>
            </tr>
            <%
                    }
                }
            %>
                  </tbody>
              </table>
         </div>
    </div>
</div>

</body>
</html>
