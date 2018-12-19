package com.chiangte.entity;

/**
 * @ClassName College
 * @Description 院系
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public class College {
    private Integer collegeid;

    private String collegename;

    public Integer getCollegeid() {
        return collegeid;
    }

    public void setCollegeid(Integer collegeid) {
        this.collegeid = collegeid;
    }

    public String getCollegename() {
        return collegename;
    }

    public void setCollegename(String collegename) {
        this.collegename = collegename == null ? null : collegename.trim();
    }
}