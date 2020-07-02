package cn.itcast.service.impl;

import cn.itcast.dao.RoleDao;
import cn.itcast.domain.Permission;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import cn.itcast.service.RoleService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;

    public  void save(Role role) throws Exception {
        roleDao.save(role);
    }

    @Override
    public List<Role> findAll(int page,int size) throws Exception {
        PageHelper.startPage(page, size); //这句话必须写在sql执行前面，不然无法显示
        return roleDao.findAll();

    }

    @Override
    public void update(Role role) {
        roleDao.update(role);
    }

    @Override
    public void delete(int id) {
        roleDao.delete(id);
    }

    @Override
    public Role findById(Integer roleId) throws Exception {
        return roleDao.findById(roleId);
    }

    @Override
    public List<Permission> findOtherPermissions(Integer roleId) throws Exception {
        return roleDao.findOtherPermissions(roleId);
    }

    @Override
    public void addPermissionToRole(Integer roleId, Integer[] permissionIds) throws Exception {
        for (Integer permissionId:permissionIds){
            roleDao.addPermissionToRole(roleId,permissionId);
        }

    }

    public void addRoleToUser(Integer userId, Integer[] roleIds) {

    }
}
