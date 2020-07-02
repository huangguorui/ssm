package cn.itcast.service;

import cn.itcast.domain.Project;

import java.util.List;

public interface ProjectService {


  public List<Project> findAll(int page, int size);
    public void save(Project project);
    public void update(Project project);
  public void delete(int id);
  public Project findById(int id);

}
