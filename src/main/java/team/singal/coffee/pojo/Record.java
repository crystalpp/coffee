package team.singal.coffee.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * 购买记录实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "record")
public class Record implements Serializable {

	@Id
	@Column(length = 11)
	private String id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "coffee_id")
	private Coffee coffee;

	private int reNumber;

	@OneToOne
	@JoinColumn(name = "receive_id")
	private ReceiveInfo receiveInfo;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Coffee getCoffee() {
		return coffee;
	}

	public void setCoffee(Coffee coffee) {
		this.coffee = coffee;
	}

	public int getReNumber() {
		return reNumber;
	}

	public void setReNumber(int reNumber) {
		this.reNumber = reNumber;
	}

	public ReceiveInfo getReceiveInfo() {
		return receiveInfo;
	}

	public void setReceiveInfo(ReceiveInfo receiveInfo) {
		this.receiveInfo = receiveInfo;
	}

	@Override
	public String toString() {
		return "Record [id=" + id + ", user=" + user + ", coffee=" + coffee + ", reNumber=" + reNumber
				+ ", receiveInfo=" + receiveInfo + "]";
	}

}
