package cn.itcast.dao;

import cn.itcast.domain.Project;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProjectDao {

//    查询
    @Select("select * from project")
    public List<Project> findAll();

    //增加
    @Insert("insert into project(title,price,img,pages,content,views) values (#{title},#{price},#{img},#{pages},#{content},#{views})")
    public void save(Project project);

    //删除

    @Delete("delete from project where id=#{id}")
    public void delete(int id);

    //修改
   @Update("update project set title=#{title},price=#{price},img=#{img},pages=#{pages},content=#{content},views=#{views} where id=#{id}")
//        @Update("update project set title='验证' where id=12")
    public void  update(Project project);


    //通过id查询出内容
    @Select("select * from project where id=#{id}")
    Project findById(Integer id);

}
