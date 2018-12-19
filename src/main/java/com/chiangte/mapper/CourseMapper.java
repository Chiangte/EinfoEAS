package com.chiangte.mapper;

import com.chiangte.entity.Course;
import com.chiangte.entity.CourseExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @ClassName CourseMapper
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface CourseMapper {
    int countByExample(CourseExample example);

    int deleteByExample(CourseExample example);

    int deleteByPrimaryKey(Integer courseid);

    int insert(Course record);

    int insertSelective(Course record);

    List<Course> selectByExample(CourseExample example);

    Course selectByPrimaryKey(Integer courseid);

    int updateByExampleSelective(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByExample(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
}