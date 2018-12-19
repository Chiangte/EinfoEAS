package com.chiangte.mapper;

import com.chiangte.entity.Teacher;
import com.chiangte.entity.TeacherExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @ClassName TeacherMapper
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface TeacherMapper {
    int countByExample(TeacherExample example);

    int deleteByExample(TeacherExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    List<Teacher> selectByExample(TeacherExample example);

    Teacher selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") Teacher record, @Param("example") TeacherExample example);

    int updateByExample(@Param("record") Teacher record, @Param("example") TeacherExample example);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
}