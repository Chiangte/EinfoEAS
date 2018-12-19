package com.chiangte.service;

import com.chiangte.entity.StudentCustom;

import java.util.List;

/**
 * @ClassName StudentService
 * @Description 学生Service层
 * @Author Chiangte
 * @Date  2018/12/15
 **/
public interface StudentService {

    //根据id个更新学生信息
    void updataById(Integer id, StudentCustom studentCustom) throws Exception;

    //根据id删除学生信息
    void removeById(Integer id) throws Exception;

    //获取分页查询学生信息
    List<StudentCustom> findByPaging(Integer toPageNo) throws Exception;

    //保存学生信息
    Boolean save(StudentCustom studentCustoms) throws Exception;

    //获取学生总数
    int getCountStudent() throws Exception;

    //根据id获取学生信息
    StudentCustom findById(Integer id) throws Exception;

    //根据名字模糊查询
    List<StudentCustom> findByName(String name) throws Exception;

    // 一对多查询，查询该学生的选课信息
    StudentCustom findStudentAndSelectCourseListByName(String name) throws Exception;

}
