package area.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import area.bean.ImgDTO;

@Repository
@Transactional
public class AreaDAOMybatis implements AreaDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void imgWrite(ImgDTO imgDTO) {
		sqlSession.insert("areaSQL.imgWrite", imgDTO);
	}

}
