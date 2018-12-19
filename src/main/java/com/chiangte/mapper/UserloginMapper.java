package com.chiangte.mapper;

import com.chiangte.entity.Userlogin;
import com.chiangte.entity.UserloginExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @ClassName UserloginMapper
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface UserloginMapper {
    int countByExample(UserloginExample example);

    int deleteByExample(UserloginExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(Userlogin record);

    int insertSelective(Userlogin record);

    List<Userlogin> selectByExample(UserloginExample example);

    Userlogin selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") Userlogin record, @Param("example") UserloginExample example);

    int updateByExample(@Param("record") Userlogin record, @Param("example") UserloginExample example);

    int updateByPrimaryKeySelective(Userlogin record);

    int updateByPrimaryKey(Userlogin record);
}