package pop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;

@Repository
@Transactional
public class PopDAOMybatis implements PopDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public TripPopLocationDTO getLocation(int pop_seq) {
		TripPopLocationDTO tripPopLocationDTO = sqlSession.selectOne("popSQL.getLocation", pop_seq);
		return tripPopLocationDTO;
	}

	@Override
	public List<TripPopImgDTO> getPopImg(int pop_seq) {
		List<TripPopImgDTO> list = sqlSession.selectList("popSQL.getPopImg", pop_seq);
		return list;
	}
	
	
	
}
