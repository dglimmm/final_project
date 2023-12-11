package com.kh.fin.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.fin.board.model.vo.Board;
import com.kh.fin.board.model.vo.Reply;
import com.kh.fin.common.model.vo.PageInfo;

@Repository
public class BoardDao {

	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}
	
	public int increaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseCount", boardNo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int selectTogetherListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectTogetherListCount");
	}
	public ArrayList<Board> selectTogetherList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit= pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectTogetherList",null,rowBounds);
	}
	
	public ArrayList<Board> togetherSearchList(SqlSessionTemplate sqlSession, Board b,PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit= pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.togetherSearchList",b,rowBounds);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int selectReviewListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectReviewListCount");
	}
	
	
	public ArrayList<Board> selectReviewList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectReviewList", null, rowBounds);
	}

	public ArrayList<Board> searchReviewList(SqlSessionTemplate sqlSession, Board b, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit= pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.searchReviewList",b,rowBounds);
	}
	
	public Board selectReviewBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectReviewBoard", boardNo);
	}
	
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int bno){
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList",bno); //list들어오므로 (ArrayList)
	}
	
	public int insertReviewReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.insertReviewReply", r);
	}
	
	
	public int updateReivewReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.update("boardMapper.updateReivewReply", r);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
