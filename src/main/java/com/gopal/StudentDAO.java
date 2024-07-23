package com.gopal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

	// Method to save a student record
	public int saveRecord(Student stu) {
		int result = 0;
		try {
			Connection con = DAO.createConnection();
			String sql = "INSERT INTO student (roll, name, age, gender, address) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, stu.getRoll());
			ps.setString(2, stu.getName());
			ps.setInt(3, stu.getAge());
			ps.setString(4, stu.getGender());
			ps.setString(5, stu.getAddress());
			result = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// Method to get all student records
	public List<Student> getAllStudents() {
		List<Student> students = new ArrayList<>();
		try {
			Connection con = DAO.createConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM student");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Student stu = new Student();
				stu.setRoll(rs.getInt("roll"));
				stu.setName(rs.getString("name"));
				stu.setAge(rs.getInt("age"));
				stu.setGender(rs.getString("gender"));
				stu.setAddress(rs.getString("address"));
				students.add(stu);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return students;
	}
}
