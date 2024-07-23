<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Sign Up</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto p-6 bg-white rounded shadow-md">
    <h2 class="text-2xl font-bold mb-4">Sign Up New Student</h2>
    <form action="print.jsp" method="post" class="space-y-4">
        <div>
            <label for="roll" class="block text-sm font-medium text-gray-700">Roll</label>
            <input type="text" id="roll" name="roll" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
        </div>
        <div>
            <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
            <input type="text" id="name" name="name" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
        </div>
        <div>
            <label for="age" class="block text-sm font-medium text-gray-700">Age</label>
            <input type="text" id="age" name="age" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
        </div>
        <div>
            <label for="gender" class="block text-sm font-medium text-gray-700">Gender</label>
            <select id="gender" name="gender" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
        </div>
        <div>
            <label for="address" class="block text-sm font-medium text-gray-700">Address</label>
            <input type="text" id="address" name="address" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>

        </div>
        <div>
            <input type="submit" value="Submit" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">
        </div>
    </form>
    <a href="listStudents.jsp" class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">View Students</a>
    <a href="attendance.jsp" class="mt-4 inline-block bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700 ml-4">Record Attendance</a>
</div>
</body>
</html>
