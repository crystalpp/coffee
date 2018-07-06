package team.singal.coffee.pojo;

import java.util.Date;

public class AssessView {

	private Date reviewDate;
	private String reviewContext;
	private int reviewHot;
	private String reviewTitle;
	private String reviewAuthor;

	public AssessView() {
		super();
	}

	public AssessView(Date reviewDate, String reviewContext, int reviewHot, String reviewTitle, String reviewAuthor) {
		super();
		this.reviewDate = reviewDate;
		this.reviewContext = reviewContext;
		this.reviewHot = reviewHot;
		this.reviewTitle = reviewTitle;
		this.reviewAuthor = reviewAuthor;
	}

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}

	public String getReviewContext() {
		return reviewContext;
	}

	public void setReviewContext(String reviewContext) {
		this.reviewContext = reviewContext;
	}

	public int getReviewHot() {
		return reviewHot;
	}

	public void setReviewHot(int reviewHot) {
		this.reviewHot = reviewHot;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewAuthor() {
		return reviewAuthor;
	}

	public void setReviewAuthor(String reviewAuthor) {
		this.reviewAuthor = reviewAuthor;
	}

	@Override
	public String toString() {
		return "AssessView [reviewDate=" + reviewDate + ", reviewContext=" + reviewContext + ", reviewHot=" + reviewHot
				+ ", reviewTitle=" + reviewTitle + ", reviewAuthor=" + reviewAuthor + "]";
	}

}
