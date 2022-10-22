package com.jeju.review.domain;

import java.sql.Date;

public class Review {
	   private int reviewNo;
	   private String memberId;
	   private Date regDate;
	   private Date reviewUpdate;
	   private String reivewContents;
	   private String reivewCount;
	   private int pensionNo;
	   
	public Review(int reviewNo, String memberId, Date regDate, Date reviewUpdate, String reivewContents,
			String reivewCount, int pensionNo) {
		this.reviewNo = reviewNo;
		this.memberId = memberId;
		this.regDate = regDate;
		this.reviewUpdate = reviewUpdate;
		this.reivewContents = reivewContents;
		this.reivewCount = reivewCount;
		this.pensionNo = pensionNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getReviewUpdate() {
		return reviewUpdate;
	}
	public void setReviewUpdate(Date reviewUpdate) {
		this.reviewUpdate = reviewUpdate;
	}
	public String getReivewContents() {
		return reivewContents;
	}
	public void setReivewContents(String reivewContents) {
		this.reivewContents = reivewContents;
	}
	public String getReivewCount() {
		return reivewCount;
	}
	public void setReivewCount(String reivewCount) {
		this.reivewCount = reivewCount;
	}
	public int getPensionNo() {
		return pensionNo;
	}
	public void setPensionNo(int pensionNo) {
		this.pensionNo = pensionNo;
	}
	      
	
	
	   
	
	
}
