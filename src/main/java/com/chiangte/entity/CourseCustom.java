package com.chiangte.entity;

/**
 * @ClassName CourseCustom
 * @Description 课程
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public class CourseCustom extends Course {

    //所属院系名
    private String collegeName;

    public void setcollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getcollegeName() {
        return collegeName;
    }

}
