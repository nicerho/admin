package admin;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@RequestMapping("/shopping")
public class webpage2 {
	PrintWriter pw = null;
	@Autowired
	BasicDataSource datasource;
	@Inject
	private SqlSessionFactory sqlSessionFactory;
	@Resource
	private SqlSessionTemplate sqlsession;
	HttpSession session = null;
	@RequestMapping("index")
	public String index(Model model,AdminConfigVO av) {
		SqlSession se = sqlSessionFactory.openSession();
		av = se.selectOne("adminDB.selectAllConfig", av);
		model.addAttribute("foot", av);
		se.close();
		return "shopping/index";
	}
}
