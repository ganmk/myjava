package cn.dao;

import cn.model.readers;

public interface readersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(readers record);

    int insertSelective(readers record);

    readers selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(readers record);

    int updateByPrimaryKey(readers record);
}