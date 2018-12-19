package com.chiangte.mapper;

import com.chiangte.entity.Role;
import com.chiangte.entity.RoleExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @ClassName RoleMapper
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface RoleMapper {
    int countByExample(RoleExample example);

    int deleteByExample(RoleExample example);

    int deleteByPrimaryKey(Integer roleid);

    int insert(Role record);

    int insertSelective(Role record);

    List<Role> selectByExample(RoleExample example);

    Role selectByPrimaryKey(Integer roleid);

    int updateByExampleSelective(@Param("record") Role record, @Param("example") RoleExample example);

    int updateByExample(@Param("record") Role record, @Param("example") RoleExample example);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}