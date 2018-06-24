package team.singal.coffee.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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

	@Override
	public String toString() {
		return "Assess [id=" + id + ", coffee=" + coffee + ", user=" + user + ", context=" + context + "]";
	}

}
