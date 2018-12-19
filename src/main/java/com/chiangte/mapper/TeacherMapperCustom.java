package com.chiangte.mapper;

import com.chiangte.entity.PagingVO;
import com.chiangte.entity.TeacherCustom;

import java.util.List;

/**
 * @ClassName TeacherMapperCustom
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface TeacherMapperCustom {

    //分页查询老师信息
    List<TeacherCustom> findByPaging(PagingVO pagingVO) throws Exception;

    //获取
}
