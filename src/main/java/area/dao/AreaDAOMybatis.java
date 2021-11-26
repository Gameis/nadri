package area.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import area.bean.ImgDTO;
import area.bean.PopMainDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

@Repository
@Transactional
public class AreaDAOMybatis implements AreaDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void imgWrite(ImgDTO imgDTO) {
		sqlSession.insert("areaSQL.imgWrite", imgDTO);
	}

	@Override
	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO) {
		sqlSession.insert("areaSQL.nadriWrite");
		sqlSession.insert("areaSQL.popWrite", tripPopDTO);
		sqlSession.insert("areaSQL.popMap", tripPopMapDTO);
	}

	@Override
	public List<PopMainDTO> printPopMain(int content) {
		return sqlSession.selectList("areaSQL.printPopMain", content);
	}

}
