package cn.itcast.dao;

import cn.itcast.domain.Account;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {


//    @Results({
//            @Result(id = true, property = "id", column = "id"),
//            @Result(property = "nickname", column = "nickname"),
//            @Result(property = "password", column = "password"),
//
////            @Result(property = "email", column = "email"),
////            @Result(property = "password", column = "password"),
////            @Result(property = "phoneNum", column = "phoneNum"),
////            @Result(property = "status", column = "status"),
////            @Result(property = "roles",column = "id",javaType = java.util.List.class,many = @Many(select = "com.itheima.ssm.dao.IRoleDao.findRoleByUserId"))
//    })
@Select("select * from user where id=#{id}")
public User findById(Integer id) throws Exception;


//登录
    @Select("select * from user where nickname=#{nickname} and password=#{password}")
    List<User> login(@Param("nickname") String nickname,@Param("password") String password);

//查询昵称是否重复
@Select("select * from user where nickname=#{nickname} ")
List<User> reg(@Param("nickname") String nickname);


//    查询
    @Select("select * from user")
    public List<User> findAll();
//    INSERT INTO `account` (`id`, `name`, `money`) VALUES (NULL, '张', '100');

    //增加
    @Insert("insert into user(nickname,password) values (#{nickname},#{password})")
    public void save(User user);

    //删除

    @Delete("delete from user where id=#{id}")
    public void delete(int id);

    //修改
    @Update("update user set nickname=#{nickname},password=#{password} where id=#{id}")
    public void  update(User user);

    @Select("select * from role where id not in (select roleId from users_role where userId=#{userId})")
    List<Role> findOtherRoles(Integer userId);

    //给用户添加权限
    @Insert("insert into users_role(userId,roleId) values (#{userId},#{roleId})")
    void addRoleToUser(@Param("userId") Integer userId, @Param("roleId") Integer roleId);
}
