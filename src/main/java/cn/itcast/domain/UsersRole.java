package cn.itcast.domain;

import java.util.List;

public class UsersRole {
    private Integer userId;
    private Integer roleId;
    private Integer id;

    @Override
    public String toString() {
        return "UsersRole{" +
                "userId=" + userId +
                ", roleId=" + roleId +
                ", id=" + id +
                '}';
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
