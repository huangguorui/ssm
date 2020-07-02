package cn.itcast.dao;

import cn.itcast.domain.Role;
import cn.itcast.domain.UsersRole;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

//不能掉
@Repository
public interface UsersRoleDao {
    @Select("select * from users_role")
    List<UsersRole> findAll() throws  Exception;

    @Insert("insert into users_role(userId,roleId) values (#{userId},#{roleId})")
    void save(UsersRole usersRole) throws  Exception;

    @Delete("delete from users_role where id=#{id}")
    public void delete(int id);

    @Update("update users_role set userId=#{userId},roleId=#{roleId} where id=#{id}")
    public void  update(UsersRole usersRole);

}
