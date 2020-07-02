package cn.itcast.service;

import cn.itcast.domain.Permission;
import cn.itcast.domain.Role;

import java.util.List;

public interface RoleService {

    public List<Role> findAll(int page,int size) throws Exception;
    void save(Role role) throws Exception;
    public void update(Role role);
    public void delete(int id);

    Role findById(Integer roleId) throws Exception;

    List<Permission> findOtherPermissions(Integer roleId) throws Exception;

    void addPermissionToRole(Integer roleId, Integer[] permissionIds) throws Exception;
}
