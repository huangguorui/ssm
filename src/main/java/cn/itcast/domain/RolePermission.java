package cn.itcast.domain;

public class RolePermission {
    private Integer permissionId;
    private Integer roleId;
    private Integer id;

    @Override
    public String toString() {
        return "RolePermission{" +
                "permissionId=" + permissionId +
                ", roleId=" + roleId +
                ", id=" + id +
                '}';
    }

    public Integer getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Integer permissionId) {
        this.permissionId = permissionId;
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
