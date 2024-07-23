<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.gopal.AttendanceDAO, com.gopal.Attendance"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Attendance Record</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto p-6 bg-white rounded shadow-md">
    <h2 class="text-2xl font-bold mb-4">Attendance Record</h2>
    <%
        String studentRoll = request.getParameter("student_roll");
        String date = request.getParameter("date");
        String status = request.getParameter("status");

        Attendance attendance = new Attendance();
        attendance.setStudentRoll(Integer.parseInt(studentRoll));
        attendance.setDate(java.time.LocalDate.parse(date));
        attendance.setStatus(status);

        AttendanceDAO attendanceDAO = new AttendanceDAO();
        int result = attendanceDAO.saveRecord(attendance);

        if (result > 0) {
            out.print("<p class='text-green-500 font-bold'>Attendance Record Saved Successfully in DB</p>");
        } else {
            out.print("<p class='text-red-500 font-bold'>Attendance Record Not Saved in DB</p>");
        }
    %>
    <p class="mb-2"><strong>Student Roll:</strong> <%= studentRoll %></p>
    <p class="mb-2"><strong>Date:</strong> <%= date %></p>
    <p class="mb-2"><strong>Status:</strong> <%= status %></p>
    <a href="listAttendance.jsp" class="mt-4 inline-block bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700">View Attendance Records</a>
    <a href="attendance.jsp" class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 ml-4">Add New Attendance</a>
</div>
</body>
</html>
