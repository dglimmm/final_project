package com.kh.fin.board.model.service;

import java.util.ArrayList;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.kh.fin.board.model.dao.BoardDao;
import com.kh.fin.board.model.vo.Board;
import com.kh.fin.board.model.vo.Reply;
import com.kh.fin.common.model.vo.PageInfo;


import com.kh.fin.board.model.vo.Plan;

import com.kh.fin.member.model.vo.Member;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Override
	public int selectTogetherListCount() {

		return boardDao.selectTogetherListCount(sqlSession);
	}

	@Override
	public ArrayList<Board> selectTogetherList(PageInfo pi) {

		return boardDao.selectTogetherList(sqlSession,pi);
	}

	
	@Override
	public ArrayList<Board> togetherSearchList(Board b, PageInfo pi) {
		
		return boardDao.togetherSearchList(sqlSession,b,pi);
	}

	@Override
	public ArrayList<Plan> selectPlanList(int memberNo) {
		return boardDao.selectPlanList(sqlSession,memberNo);
	}
	
	@Override
	public ArrayList<Plan> selectOneTripPlan(int tripPlanNo) {
		return boardDao.selectOneTripPlan(sqlSession,tripPlanNo);
	}
	@Override
	public int countMaxPlanDay(int tripPlanNo) {
		return boardDao.countMaxPlanDay(sqlSession,tripPlanNo);
	}
	@Override
	public int insertTogetherBoard(Board b) {
		return boardDao.insertTogetherBoard(sqlSession,b);
	}
	
	@Override
	public ArrayList<Board> selectTogetherBoard(int boardNo) {
		return boardDao.selectTogetherBoard(sqlSession,boardNo);
	}
	@Override
	public int updateTogetherBoard(Board b) {
		return boardDao.updateTogetherBoard(sqlSession,b);
	}

	@Override
	public int togetherDeleteBoard(int boardNo) {
		return boardDao.togetherDeleteBoard(sqlSession,boardNo);
	}
	
	@Override
	public ArrayList<Reply> selectTogetherReplyList(int boardNo) {
		return boardDao.selectTogetherReplyList(sqlSession,boardNo);
	}

	@Override
	public int ajaxInsertTogetherReply(Reply r) {
		return boardDao.ajaxInsertTogetherReply(sqlSession,r);
	}
	
	@Override
	public int ajaxDeleteTogetherReply(Reply r) {
		return boardDao.ajaxDeleteTogetherReply(sqlSession,r);
	}
	
	@Override
	public int ajaxUpdateTogetherReply(Reply r) {
		
		return boardDao.ajaxUpdateTogetherReply(sqlSession,r);
	}
	//같이가요 게시판 대댓글 작성 기능
	@Override
	public int ajaxInsertTogetherReReply(Reply r) {
		return boardDao.ajaxInsertTogetherReReply(sqlSession,r);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Override
	public int selectReviewListCount() {
		return boardDao.selectReviewListCount(sqlSession);
	}

	@Override
	public ArrayList<Board> selectReviewList(PageInfo pi) {
		return boardDao.selectReviewList(sqlSession, pi);
	}



	@Override
	public ArrayList<Board> searchReviewList(Board b, PageInfo pi) {
		return boardDao.searchReviewList(sqlSession,b,pi);
	}



















































































































































































































































































































































































































































































































































































































	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 마이페이지 같이가요 리스트업을 위한 카운트 함수
	@Override
	public int myTogetherListCount(Member m) {

		return boardDao.myTogetherListCount(sqlSession, m);
	}

	
	// 마이페이지 같이가요 게시글 리스트 조회
	@Override
	public ArrayList<Board> myTogetherList(PageInfo pi, Member m) {

		return boardDao.myTogetherList(sqlSession,pi, m);
	}
	
	
	// 마이페이지 후기 리스트업을 위한 카운트 함수
	@Override
	public int myReviewListCount(Member m) {

		return boardDao.myReviewListCount(sqlSession, m);
	}

	
	// 마이페이지 같이가요 게시글 리스트 조회
	@Override
	public ArrayList<Board> myReviewList(PageInfo pi, Member m) {

		return boardDao.myReviewList(sqlSession,pi, m);
	}






















































































































































	
	

//	public ArrayList<LocationInfomation> makePlan(HashMap<String,Object> map){
//	
//	return boardDao.makePlan(sqlSession, map);
//	}

	
	@Override
	public Board selectReviewBoard(int boardNo) {
		return boardDao.selectReviewBoard(sqlSession, boardNo);
	}

	

	
	
	@Override
	public ArrayList<Reply> selectReply(int bno) {
		return	boardDao.selectReplyList(sqlSession, bno);

	}

	@Override
	public int insertReviewReply(Reply r) {
		
		return boardDao.insertReviewReply(sqlSession, r);
	}

	
	@Override
	public int updateReivewReply(Reply r) {
		
		return boardDao.updateReivewReply(sqlSession, r);
	}


	



































































	




































































	
	
	

}
