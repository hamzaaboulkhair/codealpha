<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Record Attendance</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto p-6 bg-white rounded shadow-md">
    <h2 class="text-2xl font-bold mb-4">Record Attendance</h2>
    <form action="printAttendance.jsp" method="post" class="space-y-4">
        <div>
            <label for="student_roll" class="block text-sm font-medium text-gray-700">Student Roll</label>
            <input type="text" id="student_roll" name="student_roll" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
        </div>
        <div>
            <label for="date" class="block text-sm font-medium text-gray-700">Date</label>
            <input type="date" id="date" name="date" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
        </div>
        <div>
            <label for="status" class="block text-sm font-medium text-gray-700">Status</label>
            <select id="status" name="status" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
                <option value="Present">Present</option>
                <option value="Absent">Absent</option>
            </select>
        </div>
        <div>
            <input type="submit" value="Submit" class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700">
        </div>
    </form>
    <a href="listAttendance.jsp" class="mt-4 inline-block bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700">View Attendance Records</a>
    <a href="signup.jsp" class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 ml-4">Add New Student</a>
</div>
</body>
</html>
