<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.gopal.Student" %>
<%@ page import="com.gopal.StudentDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto p-4">
    <h1 class="text-2xl font-bold mb-4">Student List</h1>
    <table class="min-w-full bg-white border border-gray-300">
        <thead>
        <tr>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Roll</th>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Name</th>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Age</th>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Gender</th>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Address</th>
        </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
        <%
            StudentDAO studentDAO = new StudentDAO();
            List<Student> students = studentDAO.getAllStudents();
            for (Student stu : students) { %>
        <tr>
            <td class="px-6 py-4 whitespace-nowrap"><%= stu.getRoll() %></td>
            <td class="px-6 py-4 whitespace-nowrap"><%= stu.getName() %></td>
            <td class="px-6 py-4 whitespace-nowrap"><%= stu.getAge() %></td>
            <td class="px-6 py-4 whitespace-nowrap"><%= stu.getGender() %></td>
            <td class="px-6 py-4 whitespace-nowrap"><%= stu.getAddress() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <a href="signup.jsp" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 mt-4 inline-block">Add New Student</a>
</div>
</body>
</html>
