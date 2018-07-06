package team.singal.coffee.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 用户实体类
 * 
 * @author 胡春
 *
 */
@Entity
@Table(name = "admin")
public class Admin implements Serializable {
	@Id
	@Column(length = 11)
	private String id;

	@Column(length = 20)
	private String adminName;

	@Column(length = 50)
	private String adminPassword;

	@Column(length = 11)
	private String userPhone;

	@Column(length = 20)
	private String email;

	@Column(length = 11)
	private String birthday;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
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

	@Override
	public String toString() {
		return "Admin [id=" + id + ", adminName=" + adminName + ", adminPassword=" + adminPassword + ", userPhone="
				+ userPhone + ", email=" + email + ", birthday=" + birthday + "]";
	}

	

}
