package team.singal.coffee.pojo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 咖啡种类实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "kind")
public class Kind implements Serializable {

	@Id
	@Column(length = 11)
	private String id;

	@Column(length = 11)
	private String type;

	@OneToMany(mappedBy = "kind")
	private List<Coffee> coffees;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<Coffee> getCoffees() {
		return coffees;
	}

	public void setCoffees(List<Coffee> coffees) {
		this.coffees = coffees;
	}

	@Override
	public String toString() {
		return "Kind [id=" + id + ", type=" + type + ", coffees=" + coffees + "]";
	}

}
