package com.spring.biz.localAdviceComment.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.localAdviceComment.LocalAdviceCommentService;
import com.spring.biz.localAdviceComment.LocalAdviceCommentVO;

@Service("localAdviceCommentService")
public class LocalAdviceCommentServiceImpl implements LocalAdviceCommentService {
	@Autowired
	private LocalAdviceCommentDAO localAdviceCommentDAO;
	
	@Override
	public List<LocalAdviceCommentVO> getLocalAdviceCommentList(int l_idx) {
		return localAdviceCommentDAO.getLocalAdviceCommentList(l_idx);
	}

	@Override
	public void insertLocalAdviceComment(LocalAdviceCommentVO vo) {
		localAdviceCommentDAO.insertLocalAdviceComment(vo); 		
	}

	@Override
	public void updateLocalAdviceComment(LocalAdviceCommentVO vo) {
		localAdviceCommentDAO.updateLocalAdviceComment(vo);		
	}

}
