package cn.itcast.service.impl;

import cn.itcast.dao.PermissionDao;
import cn.itcast.domain.Permission;
import cn.itcast.service.PermissionService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements PermissionService {
    @Autowired
    private PermissionDao permissionDao;


    @Override
    public List<Permission> findAll(int page,int size) throws Exception {
        PageHelper.startPage(page, size); //这句话必须写在sql执行前面，不然无法显示
        return permissionDao.findAll();
    }

    @Override
    public void save(Permission permission) throws Exception {
        permissionDao.save(permission);
    }
    @Override
    public void update(Permission permission) {
        permissionDao.update(permission);
    }

    @Override
    public void delete(int id) {
        permissionDao.delete(id);
    }


}
