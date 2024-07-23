<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.gopal.AttendanceDAO"%>
<%@ page import="com.gopal.Attendance"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Attendance</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto p-6 bg-white rounded shadow-md">
    <jsp:useBean class="com.gopal.Attendance" id="attendance" scope="session"></jsp:useBean>
    <jsp:setProperty name="attendance" property="*" />

    <h3 class="text-xl font-bold mb-4">Attendance Data has been set</h3>
    <p class="mb-2 text-green-500">Attendance record has been successfully saved.</p>
    <a href="listAttendance.jsp" class="inline-block bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700">View Attendance Records</a>
    <a href="attendance.jsp" class="inline-block bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700 ml-4">Record New Attendance</a>
</div>
</body>
</html>
