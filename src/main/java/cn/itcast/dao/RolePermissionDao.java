package cn.itcast.dao;

import cn.itcast.domain.RolePermission;
import cn.itcast.domain.UsersRole;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

//不能掉
@Repository
public interface RolePermissionDao {
    @Select("select * from role_permission")
    List<RolePermission> findAll() throws  Exception;

    @Insert("insert into role_permission(permissionId,roleId) values (#{permissionId},#{roleId})")
    void save(RolePermission rolePermission) throws  Exception;

    @Delete("delete from role_permission where id=#{id}")
    public void delete(int id);

    @Update("update role_permission set permissionId=#{permissionId},roleId=#{roleId} where id=#{id}")
    public void  update(RolePermission rolePermission);

}
