<%@ page import="models.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-5">
    <%
        Task task=(Task) request.getAttribute("tasks");
        if(task!=null){
    %>
<div class="row mt-3">
   <div class="col-6 mx-auto">
    <div class="row">
        <div class="col-12">
            <label>Наименование : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" readonly value="<%=task.getName()%>" name="task_name">
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <label>Описание</label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea class="form-control" readonly rows="5"><%=task.getDescription()%></textarea>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Крайний срок : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="datetime" class="form-control"  readonly value="<%=task.getDeadlineDate()%>" name="task_date">
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            Выполнено:
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <input type="text" class="form-control" name="check" readonly value="<%=task.getDone()%>">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <a href="/"><button class="btn btn-success"> Сохранить</button></a>
        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteBook">
            Удалить
        </button>
            </div>
        </div>
       <div class="modal fade" id="deleteBook" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
           <div class="modal-dialog">
               <div class="modal-content">
                   <form action="/delete-task" method="post">
                       <input type="hidden" name="id" value="<%=task.getId()%>">
                       <div class="modal-header">
                           <h1 class="modal-title fs-5">Confirm Delete</h1>
                           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                       </div>
                       <div class="modal-body">
                           <h5 class="text-center">Are you sure?</h5>
                       </div>
                       <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                           <button class="btn btn-danger">YES</button>
                       </div>
                   </form>
               </div>
    </div>
</div>
   </div>
    <%
    }else{
    %>
    <h3 class="text-center">
        TASK NOT FOUND
    </h3>
    <%
        }
    %>
</div>
</body>
</html>
