<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 21.04.2023
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Form</title>
</head>
<body>
<form action="/add-task" method="post">
    <div class="row">
        <div class="col-12">
            <label>Наименование : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name">
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <label>Описание</label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea name="task_description" class="form-control" rows="5"></textarea>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Крайний срок : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="datetime" class="form-control" name="task_date">
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            Выполнено:
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <select class="form-select" name="check">
                <option>Дa</option>
                <option>Нет</option>
            </select>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <button class="btn btn-success">ADD TASK</button>
        </div>
    </div>
</form>
</body>
</html>
