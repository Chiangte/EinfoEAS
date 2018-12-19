package com.chiangte.entity;
/**
 * @ClassName Selectedcourse
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public class Selectedcourse {
    private Integer courseid;

    private Integer studentid;

    private Integer mark;

    public Integer getCourseid() {
        return courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid = courseid;
    }

    public Integer getStudentid() {
        return studentid;
    }

    public void setStudentid(Integer studentid) {
        this.studentid = studentid;
    }

    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }
}