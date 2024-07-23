package com.gopal;

import java.time.LocalDate;

public class Attendance {

    private int id;
    private int studentRoll;
    private LocalDate date; // Use LocalDate
    private String status;

    // Getter and Setter for ID
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    // Getter and Setter for Student Roll
    public int getStudentRoll() {
        return studentRoll;
    }
    public void setStudentRoll(int studentRoll) {
        this.studentRoll = studentRoll;
    }

    // Getter and Setter for Date
    public LocalDate getDate() {
        return date;
    }
    public void setDate(LocalDate date) {
        this.date = date;
    }

    // Getter and Setter for Status
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
}
