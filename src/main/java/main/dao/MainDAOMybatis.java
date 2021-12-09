package main.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import area.bean.ImgDTO;
import main.bean.TripMainDTO;

@Repository
@Transactional
public class MainDAOMybatis implements MainDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void mainWrite(TripMainDTO tripMainDTO) {
		sqlSession.insert("mainSQL.mainWrite", tripMainDTO);
	}

	@Override
	public void mainImgWrite(ImgDTO imgDTO) {
		sqlSession.insert("mainSQL.mainImgWrite", imgDTO);
	}

}
