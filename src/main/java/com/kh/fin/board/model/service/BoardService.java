package com.kh.fin.board.model.service;

import com.kh.fin.board.model.vo.Board;

public interface BoardService {


	//�Խñۻ���ȸ
	Board selectBoard(int boardNo);
	
	//�Խñ� ��ȸ�� ����(update)
	int increaseCount(int boardNo);
	
		
	

}
