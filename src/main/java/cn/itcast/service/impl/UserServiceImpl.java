package cn.itcast.service.impl;

import cn.itcast.dao.AccountDao;
import cn.itcast.dao.UserDao;
import cn.itcast.domain.Account;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import cn.itcast.service.AccountService;
import cn.itcast.service.UserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User findById(Integer id) throws Exception {
        return userDao.findById(id);
    }

    @Override
   public List<User> findAll(int page,int size) {
        //   public List<User> findAll() {


        //参数pageNum 是页码值   参数pageSize 代表是每页显示条数
       PageHelper.startPage(page, size); //这句话必须写在sql执行前面，不然无法显示
        return userDao.findAll();
    }


//    public List<User> findAll() {
//        return userDao.findAll();
//    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public List<Role> findOtherRoles(Integer id) {
        return userDao.findOtherRoles(id);
    }

    @Override
    public void addRoleToUser(Integer userId, Integer[] roleIds) {
        for (Integer roleId:roleIds){
           userDao.addRoleToUser(userId,roleId);
        }
    }


    @Override
    public List<User> isLogin(String nickname,String password) {
        return userDao.login(nickname,password);
    }

    @Override
    public List<User> reg(String nickname) {
        return userDao.reg(nickname);
    }


}
