package team.singal.coffee.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 购物车实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "cart")
public class Cart implements Serializable {

	@Id
	@Column(length = 11)
	private String id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "coffee_id")
	private Coffee coffee;

	private int cartNumber;

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

	public int getCartNumber() {
		return cartNumber;
	}

	public void setCartNumber(int cartNumber) {
		this.cartNumber = cartNumber;
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", user=" + user + ", coffee=" + coffee + ", cartNumber=" + cartNumber + "]";
	}

}
