package com.jeju.review.service;

import java.util.List;

import com.jeju.pension.domain.Pension;
import com.jeju.review.domain.Review;

public interface ReviewService {

	// 해당 아이디 후기 총 갯수 가져오기
	int getTotalCount(String memberId);
	// 해당 아이디 후기 전부 가져오기
	List<Review> printReviewAll(String memberId, int currentPage, int boardLimit);

	//관리자페이지 리뷰전체조회
    List<Review> showAllReview();
}
