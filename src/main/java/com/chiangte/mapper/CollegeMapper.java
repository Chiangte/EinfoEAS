package com.chiangte.mapper;

import com.chiangte.entity.College;
import com.chiangte.entity.CollegeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @ClassName CollegeMapper
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface CollegeMapper {
    int countByExample(CollegeExample example);

    int deleteByExample(CollegeExample example);

    int deleteByPrimaryKey(Integer collegeid);

    int insert(College record);

    int insertSelective(College record);

    List<College> selectByExample(CollegeExample example);

    College selectByPrimaryKey(Integer collegeid);

    int updateByExampleSelective(@Param("record") College record, @Param("example") CollegeExample example);

    int updateByExample(@Param("record") College record, @Param("example") CollegeExample example);

    int updateByPrimaryKeySelective(College record);

    int updateByPrimaryKey(College record);
}