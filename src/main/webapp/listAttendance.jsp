<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.gopal.Attendance" %>
<%@ page import="com.gopal.AttendanceDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Attendance List</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto p-4">
    <h1 class="text-2xl font-bold mb-4">Attendance List</h1>
    <table class="min-w-full bg-white border border-gray-300">
        <thead>
        <tr>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Student Roll</th>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Date</th>
            <th class="px-6 py-3 border-b-2 border-gray-300 bg-gray-200 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Status</th>
        </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
        <%
            AttendanceDAO attendanceDAO = new AttendanceDAO();
            List<Attendance> attendances = attendanceDAO.getAllAttendance();
            for (Attendance att : attendances) { %>
        <tr>
            <td class="px-6 py-4 whitespace-nowrap"><%= att.getStudentRoll() %></td>
            <td class="px-6 py-4 whitespace-nowrap"><%= att.getDate() %></td>
            <td class="px-6 py-4 whitespace-nowrap"><%= att.getStatus() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <a href="attendance.jsp" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 mt-4 inline-block">Add New Attendance</a>
</div>
</body>
</html>
