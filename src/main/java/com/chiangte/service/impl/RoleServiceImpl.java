package com.chiangte.service.impl;

import com.chiangte.mapper.RoleMapper;
import com.chiangte.entity.Role;
import com.chiangte.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName RoleServiceImpl
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/15
 **/
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    public Role findByid(Integer id) throws Exception {
        return roleMapper.selectByPrimaryKey(id);
    }
}
