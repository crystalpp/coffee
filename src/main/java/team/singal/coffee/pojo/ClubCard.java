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
 * 会员卡实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "clubCart")
public class ClubCard implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(length = 11)
	private String id;

	@Column(length = 22)
	private String cId;

	@Column(length = 11)
	private String cBalance;

	@Column(length = 11)
	private String cType;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date cardDate;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getcBalance() {
		return cBalance;
	}

	public void setcBalance(String cBalance) {
		this.cBalance = cBalance;
	}

	public String getcType() {
		return cType;
	}

	public void setcType(String cType) {
		this.cType = cType;
	}

	public Date getCardDate() {
		return cardDate;
	}

	public void setCardDate(Date cardDate) {
		this.cardDate = cardDate;
	}

	@Override
	public String toString() {
		return "ClubCard [id=" + id + ", cId=" + cId + ", cBalance=" + cBalance + ", cType=" + cType + ", user=" + user
				+ ", cardDate=" + cardDate + "]";
	}

}
