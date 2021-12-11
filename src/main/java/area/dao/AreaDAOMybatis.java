package area.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import area.bean.ImgDTO;
import area.bean.OnAreaDTO;
import area.bean.PopMainDTO;
import area.bean.TripActivityDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

@Repository
@Transactional
public class AreaDAOMybatis implements AreaDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void imgPopWrite(ImgDTO imgDTO) {
		sqlSession.insert("areaSQL.imgPopWrite", imgDTO);
	}

	@Override
	public void imgActivityWrite(ImgDTO imgDTO) {
		sqlSession.insert("areaSQL.imgActivityWrite", imgDTO);
	}
	
	@Override
	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO) {
		sqlSession.insert("areaSQL.popWrite", tripPopDTO);
		sqlSession.insert("areaSQL.popMap", tripPopMapDTO);
	}
	
	@Override
	public void activityWrite(TripActivityDTO tripActivityDTO) {
		sqlSession.insert("areaSQL.activityWrite", tripActivityDTO);
	}

	@Override
	public List<PopMainDTO> printPopMain(int main_seq) {
		return sqlSession.selectList("areaSQL.printPopMain", main_seq);
	}

	@Override
	public List<PopMainDTO> printActivityMain(int main_seq) {
		return sqlSession.selectList("areaSQL.printActivityMain", main_seq);
	}

	@Override
	public List<OnAreaDTO> onArea(String main_seq) {
		return sqlSession.selectList("areaSQL.onArea", main_seq);
	}
}
