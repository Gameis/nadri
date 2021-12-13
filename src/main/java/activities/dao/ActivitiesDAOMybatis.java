package activities.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import activities.bean.OnActivitiesDTO;
import activities.bean.TripActReviewCntDTO;
import activities.bean.TripActReviewDTO;

@Repository
@Transactional
public class ActivitiesDAOMybatis implements ActivitiesDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public OnActivitiesDTO onActivities(String activity_seq) {
		System.out.println("activity_seq = " + activity_seq);
		return sqlSession.selectOne("activitiesSQL.onActivities", activity_seq);
	}

	@Override
	public TripActReviewDTO actReviewWrite(TripActReviewDTO tripActReviewDTO) {
		return sqlSession.selectOne("activitiesSQL.actReviewWrite", tripActReviewDTO);
	}

	@Override
	public TripActReviewCntDTO getActReviewCnt() {
		return sqlSession.selectOne("activitiesSQL.getActReviewCnt");
	}

	@Override
	public Object getActReviewUserInfo(String member_seq) {
		return sqlSession.selectOne("activitiesSQL.getActReviewUserInfo");
	}

}
