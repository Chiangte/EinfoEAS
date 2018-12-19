package com.chiangte.mapper;

import com.chiangte.entity.Selectedcourse;
import com.chiangte.entity.SelectedcourseExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @ClassName SelectedcourseMapper
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface SelectedcourseMapper {
    int countByExample(SelectedcourseExample example);

    int deleteByExample(SelectedcourseExample example);

    int insert(Selectedcourse record);

    int insertSelective(Selectedcourse record);

    List<Selectedcourse> selectByExample(SelectedcourseExample example);

    int updateByExampleSelective(@Param("record") Selectedcourse record, @Param("example") SelectedcourseExample example);

    int updateByExample(@Param("record") Selectedcourse record, @Param("example") SelectedcourseExample example);
}