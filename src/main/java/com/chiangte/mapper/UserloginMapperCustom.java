package com.chiangte.mapper;

import com.chiangte.entity.UserloginCustom;

/**
 * @ClassName UserloginMapper扩展类
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/14
 **/
public interface UserloginMapperCustom {

    UserloginCustom findOneByName(String name) throws Exception;

}
