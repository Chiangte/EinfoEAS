package com.chiangte.mapper;

import com.chiangte.entity.Student;
import com.chiangte.entity.StudentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @ClassName StudentMapper
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface StudentMapper {
    int countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(Student record);

    int insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}