<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Form</title>
    <style>
        /* Additional styles for this page */
        h1 {
            background-color: #a3f871;
            color: white;
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
        }

        form.employee {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 95%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Employee Form</h1>
<form class="employee" action="/saveEmployee" method="post">
    <label for="id">Id:</label>
    <input id="id" type="text" name="employeeId" value="${employee.getEmployeeId()}" disabled>

    <label for="name">Name:</label>
    <input type="text" id="name" name="employeeName" value="${employee.getEmployeeName()}" required>

    <label for="age">Age:</label>
    <input type="text" id="age" name="employeeAge" value="${employee.getEmployeeAge()}" required>

    <label for="department">Department:</label>
    <input type="text" id="department" name="employeeDepartment" value="${employee.getEmployeeDepartment()}" required>

    <label for="salary">Salary:</label>
    <input type="text" id="salary" name="employeeSalary" value="${employee.getEmployeeSalary()}" required>

    <input type="submit" value="Save">
</form>
</body>
</html>