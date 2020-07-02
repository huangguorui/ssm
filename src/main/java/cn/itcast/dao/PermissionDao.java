package cn.itcast.dao;

import cn.itcast.domain.Permission;
import cn.itcast.domain.Role;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface PermissionDao {
    @Select("select * from permission")
    List<Permission> findAll() throws  Exception;

    @Insert("insert into permission(permissionName,url) values (#{permissionName},#{url})")
    void save(Permission permission) throws  Exception;

    @Delete("delete from  permission where id=#{id}")
    public void delete(int id);

    @Update("update permission set permissionName=#{permissionName},url=#{url} where id=#{id}")
    public void  update(Permission permission);
}
