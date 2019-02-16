package tech.wetech.admin.modules.system.service;

import tech.wetech.admin.core.exception.BizException;
import tech.wetech.admin.modules.system.po.User;
import tech.wetech.admin.modules.system.po.Wxuser;

public interface WxuserService {
    void createUser(Wxuser wxuser);
}
