package team.singal.coffee.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 评价实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "assess")
public class Assess implements Serializable {
	@Id
	@Column(length = 11)
	private String id;

	@ManyToOne
	@JoinColumn(name = "coffee_id")
	private Coffee coffee;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	@Column(length = 255)
	private String context;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reviewDate;

	private int reviewHot;

	@Column(length = 50)
	private String reviewTitle;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Coffee getCoffee() {
		return coffee;
	}

	public void setCoffee(Coffee coffee) {
		this.coffee = coffee;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
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

	@Override
	public String toString() {
		return "Assess [id=" + id + ", coffee=" + coffee + ", user=" + user + ", context=" + context + ", reviewDate="
				+ reviewDate + ", reviewHot=" + reviewHot + ", reviewTitle=" + reviewTitle + "]";
	}

}
