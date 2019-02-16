package tech.wetech.admin.modules.system.web;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import tech.wetech.admin.core.utils.BaseController;
import tech.wetech.admin.core.utils.HttpRequest;
import tech.wetech.admin.core.utils.Md5Encrypt;
import tech.wetech.admin.modules.system.po.Wxuser;
import tech.wetech.admin.modules.system.service.WxuserService;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/static/wxuser")
public class WxUserController extends BaseController {
    @Autowired
    private WxuserService wxuserService;

    @RequestMapping("/logins")
    public Map insertUser( @RequestParam(value = "code", required = false) String code) throws Exception {
        Map map = new HashMap();
        if (StringUtils.isBlank(code)) {
            map.put("msg", "code为空");
            return map;
        }
        String wxspAppid="wx2ba5fd0863487de2";
        //String wxspSecret = "d8c1ccd5cc1d1fe43aa2991626bba419";
        String wxspSecret = "ca6cc15e30fb6d17090469802d9695a5";
        String grant_type = "authorization_code";
        String param = "appid=" + wxspAppid + "&secret=" + wxspSecret + "&js_code=" + code + "&grant_type=" + grant_type;
        String sr = HttpRequest.sendPost("https://api.weixin.qq.com/sns/jscode2session", param);
        JSONObject jsonObject = JSONObject.parseObject(sr);
        String openid = jsonObject.get("openid").toString();
        Wxuser wxuser=new Wxuser();
        wxuser.setUopenid( openid);
        wxuserService.createUser(wxuser);
        //获取会话密钥（session_key）
        String session_key = jsonObject.get("session_key").toString();
        String openSession = Md5Encrypt.md5Encrypt(openid);
        map.put("openSession", openSession);
        return map;
    }

}
