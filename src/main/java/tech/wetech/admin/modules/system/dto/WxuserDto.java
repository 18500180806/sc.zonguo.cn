package tech.wetech.admin.modules.system.dto;

import tech.wetech.admin.modules.system.po.Wxuser;

import java.util.Date;

public class WxuserDto {
    private Long id;//id

    private String uopenid;//微信openid

    private Date createTime;//创建时间

    public WxuserDto() {
    }

    public WxuserDto(Wxuser wxuser) {
        this.id = wxuser.getId();
        this.uopenid = wxuser.getUopenid();
        this.createTime = wxuser.getCreateTime();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUopenid() {
        return uopenid;
    }

    public void setUopenid(String uopenid) {
        this.uopenid = uopenid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
