package cn.itcast.service;

import cn.itcast.domain.RolePermission;
import cn.itcast.domain.UsersRole;

import java.util.List;

public interface RolePermissionService {

    public List<RolePermission> findAll(int page, int size) throws Exception;
    void save(RolePermission rolePermission) throws Exception;
    public void update(RolePermission rolePermission);
    public void delete(int id);
}
