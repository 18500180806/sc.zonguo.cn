package tech.wetech.admin.modules.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.wetech.admin.modules.system.mapper.WxuserMapper;
import tech.wetech.admin.modules.system.po.Wxuser;
import tech.wetech.admin.modules.system.service.WxuserService;
@Service
public class WxuserServiceImpl implements WxuserService {
    @Autowired
    private WxuserMapper wxuserMapper;
    @Override
    public void createUser(Wxuser wxuser) {
        wxuserMapper.insertSelective(wxuser);
    }
}
