package app;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

//Resource 방식의 모듈 및 컨트롤러
@Repository("data1")//module입장에서 쓰일 alias를 정하구 클래스 로드가 아닌 별명으로 가져다 슬수잇다
public class SiteModule2 {
		@Resource(name="sqlsession") //dbconfig.xml에 있는 템플릿을 로드
		private SqlSessionTemplate sqlSession; //객체 로드
		private SiteDto sd; //dto클래스 로드
		public SiteDto select() {
			//template로 해당 select 후 setter로 값 전송
			sd = sqlSession.selectOne("adminDB.siteInfo",sd);
			return sd; 
		}
}
