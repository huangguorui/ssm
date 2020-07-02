package cn.itcast.service;

import cn.itcast.domain.Permission;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;

import java.util.List;

public interface PermissionService {
    public List<Permission> findAll(int page,int size) throws Exception;
     void save(Permission permission) throws Exception;
    public void update(Permission permission);
    public void delete(int id);
}
