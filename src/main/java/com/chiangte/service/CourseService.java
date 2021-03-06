package com.chiangte.service;

import com.chiangte.entity.CourseCustom;

import java.util.List;

/**
 * @ClassName CourseService
 * @Description 课程信息.
 * @Author Chiangte
 * @Date  2018/12/15
 **/
public interface CourseService {
    //根据id更新课程信息
    void upadteById(Integer id, CourseCustom courseCustom) throws Exception;

    //根据id删除课程信息
    Boolean removeById(Integer id) throws Exception;

    //获取分页查询课程信息
    List<CourseCustom> findByPaging(Integer toPageNo) throws Exception;

    //插入课程信息
    Boolean save(CourseCustom couseCustom) throws Exception;

    //获取课程总数
    int getCountCouse() throws Exception;

    //根据id查询
    CourseCustom findById(Integer id) throws Exception;

    //根据名字查询
    List<CourseCustom> findByName(String name) throws Exception;

    //根据教师id查找课程
    List<CourseCustom> findByTeacherID(Integer id) throws Exception;
}
