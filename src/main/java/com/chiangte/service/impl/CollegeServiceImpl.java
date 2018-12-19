package com.chiangte.service.impl;

import com.chiangte.mapper.CollegeMapper;
import com.chiangte.entity.College;
import com.chiangte.entity.CollegeExample;
import com.chiangte.service.CollegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName CollegeServiceImpl
 * @Description TODO
 * @Author Chiangte
 * @Date  2018/12/16
 **/
@Service
public class CollegeServiceImpl implements CollegeService {

    @Autowired
    private CollegeMapper collegeMapper;

    public List<College> finAll() throws Exception {
        CollegeExample collegeExample = new CollegeExample();
        CollegeExample.Criteria criteria = collegeExample.createCriteria();

        criteria.andCollegeidIsNotNull();


        return collegeMapper.selectByExample(collegeExample);
    }
}
