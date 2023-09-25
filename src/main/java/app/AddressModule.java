package app;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("address")
public class AddressModule {
	@Resource(name = "sqlsession") // dbconfig.xml에 있는 템플릿을 로드
	private SqlSessionTemplate sqlSession; // 객체 로드
	

	public int addressInsert(PostDto pd) {
	
		int x = sqlSession.insert("adminDB.postInsert", pd);
		return x;
	}
}
