package org.mybook.dao.mapper;

import org.mybook.model.readers;

public interface readersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(readers record);

    int insertSelective(readers record);

    readers selectByPrimaryKey(Integer id);

    readers loadUserByUsername(String username);

    int updateByPrimaryKeySelective(readers record);

    int updateByPrimaryKey(readers record);
}