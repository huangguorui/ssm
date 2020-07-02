package cn.itcast.service.impl;

import cn.itcast.dao.RoleDao;
import cn.itcast.dao.UsersRoleDao;
import cn.itcast.domain.Role;
import cn.itcast.domain.UsersRole;
import cn.itcast.service.RoleService;
import cn.itcast.service.UsersRoleService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UsersRoleServiceImpl implements UsersRoleService {
    @Autowired
    private UsersRoleDao usersRoleDao;

    public  void save(UsersRole usersRole) throws Exception {
        usersRoleDao.save(usersRole);
    }

    @Override
    public List<UsersRole> findAll(int page,int size) throws Exception {
        PageHelper.startPage(page, size); //这句话必须写在sql执行前面，不然无法显示
        return usersRoleDao.findAll();

    }

    @Override
    public void update(UsersRole usersRole) {
        usersRoleDao.update(usersRole);
    }

    @Override
    public void delete(int id) {
        usersRoleDao.delete(id);
    }
}
