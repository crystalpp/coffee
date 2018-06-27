package team.singal.coffee.pojo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 用户实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "user")
public class User implements Serializable {
	@Id
	@Column(length = 11)
	private String id;

	@Column(length = 20)
	private String userName;

	@Column(length = 50)
	private String userPassword;

	@Column(length = 11)
	private String userPhone;

	@Column(length = 20)
	private String email;

	@Column(length = 11)
	private String birthday;

	@OneToMany(mappedBy = "user")
	private List<ReceiveInfo> receiveInfos;

	@OneToMany(mappedBy = "user")
	private List<ClubCard> clubCards;

	@OneToMany(mappedBy = "user")
	private List<Assess> assesses;

	@OneToMany(mappedBy = "user")
	private List<Record> records;

	@OneToMany(mappedBy = "user")
	private List<Cart> carts;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public List<ReceiveInfo> getReceiveInfos() {
		return receiveInfos;
	}

	public void setReceiveInfos(List<ReceiveInfo> receiveInfos) {
		this.receiveInfos = receiveInfos;
	}

	public List<ClubCard> getClubCards() {
		return clubCards;
	}

	public void setClubCards(List<ClubCard> clubCards) {
		this.clubCards = clubCards;
	}

	public List<Assess> getAssesses() {
		return assesses;
	}

	public void setAssesses(List<Assess> assesses) {
		this.assesses = assesses;
	}

	public List<Record> getRecords() {
		return records;
	}

	public void setRecords(List<Record> records) {
		this.records = records;
	}

	public List<Cart> getCarts() {
		return carts;
	}

	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", userPassword=" + userPassword + ", userPhone="
				+ userPhone + ", email=" + email + ", birthday=" + birthday + ", receiveInfos=" + receiveInfos
				+ ", clubCards=" + clubCards + ", assesses=" + assesses + ", records=" + records + ", carts=" + carts
				+ "]";
	}

}
