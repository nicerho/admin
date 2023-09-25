package app;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

//사이트정보 adminconfig 테이블 활용한 모듈
//Module에서는 @Inject를 핸들링하지못함

public class SiteModule {
	private SiteDto sd = null;
	SqlSession se = null;

	public SiteModule(SqlSessionFactory sqlSessionFactory) {
		se = sqlSessionFactory.openSession();
	}

	public SiteDto check() {
		try {
			sd = se.selectOne("adminDB.siteInfo", sd);
			se.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sd;
	}
}
