package com.chiangte.mapper;

import com.chiangte.entity.CourseCustom;
import com.chiangte.entity.PagingVO;

import java.util.List;


/**
 * @ClassName CourseMapperCustom
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface CourseMapperCustom {

    //分页查询学生信息
    List<CourseCustom> findByPaging(PagingVO pagingVO) throws Exception;

}
