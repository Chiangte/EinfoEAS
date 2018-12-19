package com.chiangte.service;

import com.chiangte.entity.Role;

/**
 * @ClassName RoleService
 * @Description Role 权限表Service层.
 * @Author Chiangte
 * @Date  2018/12/15
 **/
public interface RoleService {

    Role findByid(Integer id) throws Exception;

}
