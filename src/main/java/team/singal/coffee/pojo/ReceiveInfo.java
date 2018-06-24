package team.singal.coffee.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 收货信息实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "receiveInfo")
public class ReceiveInfo implements Serializable {

	@Id
	@Column(length = 11)
	private String id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@Column(length = 20)
	private String rName;

	@Column(length = 11)
	private String rPhone;

	@Column(length = 100)
	private String rAddress;

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

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrPhone() {
		return rPhone;
	}

	public void setrPhone(String rPhone) {
		this.rPhone = rPhone;
	}

	public String getrAddress() {
		return rAddress;
	}

	public void setrAddress(String rAddress) {
		this.rAddress = rAddress;
	}

	@Override
	public String toString() {
		return "ReceiveInfo [id=" + id + ", user=" + user + ", rName=" + rName + ", rPhone=" + rPhone + ", rAddress="
				+ rAddress + "]";
	}

}
