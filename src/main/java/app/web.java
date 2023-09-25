package app;

import javax.annotation.Resource;

//MyBatis + MVC + DTO
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

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
		model.addAttribute("data", sd);
		return "/app/test";
	}

	@Resource(name = "address")
	private AddressModule am;
	
	@RequestMapping("/app/addressok.do")
	public int addressOk(Model model, @RequestParam String pno1, @RequestParam String pno2, @RequestParam String pno3,
			@RequestParam String pno4){
		PostDto pd = new PostDto();
		pd.setPno1(pno1);
		pd.setPno2(pno2);
		pd.setPno3(pno3);
		pd.setPno4(pno4);
		int x = am.addressInsert(pd);
		System.out.println(x);
		return 0;
	}
}
