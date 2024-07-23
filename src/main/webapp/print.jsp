<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.gopal.StudentDAO, com.gopal.Student"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Print Student Data</title>
  <!-- Tailwind CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="p-6 bg-white rounded shadow-md">
  <h3 class="text-xl font-bold mb-4">Student Data</h3>
  <%
    String roll = request.getParameter("roll");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");

    Student stu = new Student();
    stu.setRoll(Integer.parseInt(roll));
    stu.setName(name);
    stu.setAge(Integer.parseInt(age));
    stu.setGender(gender);
    stu.setAddress(address);

    StudentDAO studentDAO = new StudentDAO();
    int result = studentDAO.saveRecord(stu);

    if (result > 0) {
      out.print("<h3 class='text-green-500'>Record Saved Successfully in DB</h3>");
    } else {
      out.print("<h3 class='text-red-500'>Record Not Saved in DB</h3>");
    }
  %>
  <p class="mb-2"><strong>Roll:</strong> <%= roll %></p>
  <p class="mb-2"><strong>Name:</strong> <%= name %></p>
  <p class="mb-2"><strong>Age:</strong> <%= age %></p>
  <p class="mb-2"><strong>Gender:</strong> <%= gender %></p>
  <p class="mb-2"><strong>Address:</strong> <%= address %></p>
  <a href="listStudents.jsp" class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">View Students</a>
  <a href="signup.jsp" class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 ml-4">Add New Student</a>
</div>
</body>
</html>
