package org.mybook.service;

import org.mybook.dao.mapper.readersMapper;
import org.mybook.model.readers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class ReaderServices  implements UserDetailsService {

    @Autowired
    readersMapper _readersMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        readers _readers = _readersMapper.loadUserByUsername(username);

        if (_readers == null) {
            throw new UsernameNotFoundException("用户名不存在!");
        }

        //_readers.setRoles(_readersMapper.getReadersRolesById(_readers.getId()));
        return _readers;
    }
}
