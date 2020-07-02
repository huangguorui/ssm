package cn.itcast.service;

import cn.itcast.domain.Account;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;

import java.util.List;

public interface UserService {



  User findById(Integer id) throws Exception;
  public List<User> findAll(int page,int size);
    public void save(User user);
    public void update(User user);
    public void delete(int id);

  List<Role> findOtherRoles(Integer id);

    void addRoleToUser(Integer userId, Integer[] roleIds);

  public List<User> isLogin(String nickname,String password);
  public List<User> reg(String nickname);

}
