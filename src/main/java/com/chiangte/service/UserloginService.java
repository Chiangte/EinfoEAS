package com.chiangte.service;

import com.chiangte.entity.Userlogin;

/**
 * @ClassName UserloginService
 * @Description 登录Service层
 * @Author Chiangte
 * @Date  2018/12/15
 **/
public interface UserloginService {

    //根据名字查找用户
    Userlogin findByName(String name) throws Exception;

    //保存用户登录信息
    void save(Userlogin userlogin) throws Exception;

    //根据姓名删除
    void removeByName(String name) throws Exception;

    //根据用户名更新
    void updateByName(String name, Userlogin userlogin);

}
