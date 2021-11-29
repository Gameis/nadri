package pop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	
	
	
}
