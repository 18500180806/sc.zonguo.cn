package tech.wetech.admin.modules.system.po;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Table(name = "wxuser")
public class Wxuser {

    /**
     * 编号
     */
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    /**
     * 微信openid
     */
    private String uopenid;
    /**
     * 创建时间
     */
    private Date createTime;

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

    @Override
    public String toString() {
        return "Wxuser{" +
                "id=" + id +
                ", uopenid=" + uopenid +
                ", createTime=" + createTime +
                '}';
    }

    public Wxuser(String uopenid, Date createTime) {
        this.uopenid = uopenid;
        this.createTime = createTime;
    }

    public Wxuser() {
    }
}
