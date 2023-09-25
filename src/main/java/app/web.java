package app;

import javax.annotation.Resource;

//MyBatis + MVC + DTO
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class web {
	/*
	 * @Inject SqlSessionFactory sqlSessionFactory;
	 * 
	 * @RequestMapping("/test.do") public String test(Model model) { SiteModule sm =
	 * new SiteModule(sqlSessionFactory); SiteDto sd = sm.check();
	 * System.out.println(sd.getAadress()); model.addAttribute("data",sd); return
	 * "/app/test"; }
	 */
	@Resource(name = "data1")
	private SiteModule2 sm;
	private SiteDto sd;
	@RequestMapping("/test.do")
	public String test(Model model) {
		sd = sm.select();
		model.addAttribute("data",sd);
		return "/app/test";
	}
	@Resource(name="address")
	private AddressModule am;
	@RequestMapping("/addressok.do")
	public int addressOk(Model model) {
		am.addressInsert();
		return 0;
	}
}
