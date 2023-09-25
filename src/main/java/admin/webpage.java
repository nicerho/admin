package admin;

import java.io.PrintWriter;
import java.security.Principal;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class webpage {
	PrintWriter pw = null;
	@Autowired
	BasicDataSource datasource;
	@Inject
	private SqlSessionFactory sqlSessionFactory;
	@Resource
	private SqlSessionTemplate sqlsession;
	HttpSession session = null;

	@RequestMapping("/adminLogin.do")
	public String adminLogin( HttpServletRequest req) {
		
		session = req.getSession();
		session.setAttribute("perid", "최고관리자");
		return "/admin/admin_main";
	}

	@GetMapping("/adminConfig.do")
	public String adminConfig(@ModelAttribute("adminconfig") AdminConfigVO av, Model model, HttpServletRequest req) {
	    SqlSession se = sqlSessionFactory.openSession();
	    try {
	        av = se.selectOne("adminDB.selectAllConfig", av);
	        model.addAttribute("data", av);
	        HttpSession session = req.getSession();
	        session.setAttribute("perid", "최고관리자");
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        se.close();
	    }
	    return "/admin/admin_config";
	}


	@PostMapping("/adminconfigsave.do")
	public void adminConfigSave(@ModelAttribute("adminconfig") AdminConfigVO av, HttpServletResponse res) throws Exception {
	    SqlSession se = sqlSessionFactory.openSession();
	    res.setContentType("text/html; charset=utf-8");
	    PrintWriter pw = res.getWriter();
	    try {
	        int a = se.selectOne("adminDB.selectAllConfigForCheck", av);
	        if (a > 0) {
	            se.delete("adminDB.deleteConfig", av);
	        }
	        int b = se.insert("adminDB.adminInsert", av);
	        if (b > 0) {
	            pw.write("<script>alert('성공적으로 저장 되었습니다');location.href='./adminConfig.do'</script>");
	        } else {
	            pw.write("<script>alert('error');history.go(-1)</script>");
	        }
	    } catch (NullPointerException e) {
	        int b = se.insert("adminDB.adminInsert", av);
	        if (b > 0) {
	            pw.write("<script>alert('성공적으로 저장 되었습니다');location.href='./adminConfig.do'</script>");
	        } else {
	            pw.write("<script>alert('error');history.go(-1)</script>");
	        }
	    } catch (Exception ee) {
	        ee.printStackTrace();
	    } finally {
	        se.close();
	        pw.close();
	    }
	}
	
	
	
	@RequestMapping("/shopping/footer.jsp")
	public String footerInfo(Model model,AdminConfigVO av) {
		SqlSession se = sqlSessionFactory.openSession();
		av = se.selectOne("adminDB.selectAllConfig", av);
		model.addAttribute("foot", av);
		se.close();
		return "shopping/footer";
	}

}
