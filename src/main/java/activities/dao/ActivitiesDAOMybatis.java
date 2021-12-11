package activities.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import activities.bean.OnActivitiesDTO;

@Repository
@Transactional
public class ActivitiesDAOMybatis implements ActivitiesDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<OnActivitiesDTO> onActivities(String activity_seq) {
		return sqlSession.selectOne("activitiesSQL.onActivities", activity_seq);
	}

}
