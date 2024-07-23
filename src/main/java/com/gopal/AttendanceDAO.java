package com.gopal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AttendanceDAO {

    // Method to save an attendance record
    public int saveRecord(Attendance attendance) {
        int result = 0;
        try {
            Connection con = DAO.createConnection();
            String sql = "INSERT INTO attendance (student_roll, date, status) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, attendance.getStudentRoll());
            ps.setDate(2, java.sql.Date.valueOf(attendance.getDate())); // Make sure date is in LocalDate format
            ps.setString(3, attendance.getStatus());
            result = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // Method to get all attendance records
    public List<Attendance> getAllAttendance() {
        List<Attendance> attendanceList = new ArrayList<>();
        try {
            Connection con = DAO.createConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Attendance");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Attendance attendance = new Attendance();
                attendance.setId(rs.getInt("id"));
                attendance.setStudentRoll(rs.getInt("student_roll"));
                attendance.setDate(rs.getDate("date").toLocalDate()); // Convert SQL Date to LocalDate
                attendance.setStatus(rs.getString("status"));
                attendanceList.add(attendance);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return attendanceList;
    }
}
