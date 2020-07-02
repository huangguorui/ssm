package cn.itcast.service.impl;

import cn.itcast.dao.RolePermissionDao;
import cn.itcast.domain.RolePermission;
import cn.itcast.domain.UsersRole;
import cn.itcast.service.RolePermissionService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PolePermissionServiceImpl implements RolePermissionService {
    @Autowired
    private RolePermissionDao rolePermissionDao ;

    public  void save(RolePermission rolePermission) throws Exception {
        rolePermissionDao.save(rolePermission);
    }

    @Override
    public List<RolePermission> findAll(int page,int size) throws Exception {
        PageHelper.startPage(page, size); //这句话必须写在sql执行前面，不然无法显示
        return rolePermissionDao.findAll();

    }

    @Override
    public void update(RolePermission rolePermission) {
        rolePermissionDao.update(rolePermission);
    }

    @Override
    public void delete(int id) {
        rolePermissionDao.delete(id);
    }
}
