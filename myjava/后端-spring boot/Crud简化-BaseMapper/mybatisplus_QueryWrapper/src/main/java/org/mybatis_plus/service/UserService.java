package org.mybatis_plus.service;



import org.mybatis_plus.mapper.userMapper;
import org.mybatis_plus.model.user;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class UserService {
    @Autowired
    userMapper _userMapper;

    public user selectByPrimaryKey(Integer id)
    {
        return  _userMapper.selectById(id);
    }
}
