package pop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pop.bean.TripPopCountDTO;
import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;
import pop.bean.TripPopReviewContentDTO;
import pop.bean.TripPopReviewDTO;
import pop.bean.TripPopReviewImgDTO;
import pop.bean.TripPopReviewSearchDTO;

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

	@Override
	public void popReviewImgWrite(TripPopImgDTO tripPopImgDTO) {
		sqlSession.insert("popSQL.popReviewImgWrite", tripPopImgDTO);
	}

	@Override
	public void popReviewWrite(TripPopReviewDTO tripPopReviewDTO) {
		sqlSession.insert("popSQL.popReviewWrite", tripPopReviewDTO);
	}

	@Override
	public TripPopCountDTO getCountView() {
		
		return sqlSession.selectOne("popSQL.getCountView");
	}
	
	@Override
	public int getReviewContentCnt(TripPopReviewSearchDTO tripPopReviewSearchDTO) {
		return sqlSession.selectOne("popSQL.getReviewContentCnt", tripPopReviewSearchDTO);
	}

	@Override
	public List<TripPopReviewContentDTO> getReviewContent(TripPopReviewSearchDTO tripPopReviewSearchDTO) {
		return sqlSession.selectList("popSQL.getReviewContent", tripPopReviewSearchDTO);
	}

	@Override
	public Object getReviewContentPhotoCnt(TripPopReviewSearchDTO tripPopReviewSearchDTO) {
		return sqlSession.selectOne("popSQL.getReviewContentPhotoCnt", tripPopReviewSearchDTO);
	}

	@Override
	public Object getReviewContentPhoto(TripPopReviewSearchDTO tripPopReviewSearchDTO) {
		return sqlSession.selectList("popSQL.getReviewContentPhoto", tripPopReviewSearchDTO);
	}

	@Override
	public List<TripPopReviewImgDTO> getReviewContentPhotoList(TripPopReviewSearchDTO tripPopReviewSearchDTO) {
		return sqlSession.selectList("popSQL.getReviewContentPhotoList", tripPopReviewSearchDTO);
	}
	
	
	
}
