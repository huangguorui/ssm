package cn.itcast.service;

import cn.itcast.domain.Role;
import cn.itcast.domain.UsersRole;

import java.util.List;

public interface UsersRoleService {

    public List<UsersRole> findAll(int page, int size) throws Exception;
    void save(UsersRole usersRole) throws Exception;
    public void update(UsersRole usersRole);
    public void delete(int id);
}
