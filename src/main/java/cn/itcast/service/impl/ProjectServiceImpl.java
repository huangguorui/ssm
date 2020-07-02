package cn.itcast.service.impl;

import cn.itcast.dao.ProjectDao;
import cn.itcast.domain.Project;
import cn.itcast.service.ProjectService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private ProjectDao projectDao;

    @Override
    public List<Project> findAll(int page, int size) {
        //   public List<User> findAll() {



        //参数pageNum 是页码值   参数pageSize 代表是每页显示条数
        PageHelper.startPage(page, size); //这句话必须写在sql执行前面，不然无法显示
        return projectDao.findAll();
    }


    @Override
    public void save(Project project) {
        projectDao.save(project);
    }

    @Override
    public void update(Project project) {
        projectDao.update(project);
    }

    @Override
    public void delete(int id) {
        projectDao.delete(id);
    }

    @Override
    public Project findById(int id) {

        return  projectDao.findById(id);
    }


}
