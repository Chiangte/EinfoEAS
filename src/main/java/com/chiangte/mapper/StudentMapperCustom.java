package com.chiangte.mapper;

import com.chiangte.entity.PagingVO;
import com.chiangte.entity.StudentCustom;

import java.util.List;

/**
 * @ClassName StudentMapperCustom
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface StudentMapperCustom {

    //分页查询学生信息
    List<StudentCustom> findByPaging(PagingVO pagingVO) throws Exception;

    //查询学生信息，和其选课信息
    StudentCustom findStudentAndSelectCourseListById(Integer id) throws Exception;

}
