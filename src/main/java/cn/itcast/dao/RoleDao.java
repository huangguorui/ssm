package cn.itcast.dao;

import cn.itcast.domain.Permission;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

//不能掉
@Repository
public interface RoleDao {
    @Select("select * from role")
    List<Role> findAll() throws  Exception;

    @Insert("insert into role(roleName,roleDesc) values (#{roleName},#{roleDesc})")
    void save(Role role) throws  Exception;

    @Delete("delete from role where id=#{id}")
    public void delete(int id);

    @Update("update role set roleName=#{roleName},roleDesc=#{roleDesc} where id=#{id}")
    public void  update(Role role);



    //给资源添加角色
    @Insert("insert into role_permission(roleId,permissionId) values (#{roleId},#{permissionId})")
    void addPermissionToRole(@Param("roleId") Integer roleId, @Param("permissionId") Integer permissionId );

    //通过id查询出当前角色
    @Select("select * from role where id=#{id}")
    Role findById(Integer roleId);





    @Select("select * from permission where id not in (select permissionId from role_permission where roleId=#{roleId})")
    List<Permission> findOtherPermissions(Integer roleId);
}
