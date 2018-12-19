package com.chiangte.entity;

/**
 * @ClassName TeacherCustom
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public class TeacherCustom extends Teacher {
    //所属院系名
    private String collegeName;

    public void setcollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getcollegeName() {
        return collegeName;
    }
}
