package team.singal.coffee.pojo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 咖啡实体类
 * 
 * @author 皮艳萍
 *
 */
@Entity
@Table(name = "coffee")
public class Coffee implements Serializable {

	@Id
	@Column(length = 11)
	private String id;

	@Column(length = 30)
	private String coName;

	private int coHot;

	@Column(length = 255)
	private String coIntroduce;

	@Column(length = 20)
	private String coIne;

	@Column(length = 100)
	private String coRegion;

	@ManyToOne
	@JoinColumn(name = "kind_id")
	private Kind kind;

	@Column(length = 11)
	private String coPrice;

	private int coNumber;

	@Column(length = 50)
	private String coPictrue;

	@Column(length = 50)
	private String coPF;

	@Column(length = 50)
	private String coHTP;

	@Column(length = 50)
	private String coS;

	@OneToMany(mappedBy = "coffee")
	private List<Assess> assesses;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public int getCoHot() {
		return coHot;
	}

	public void setCoHot(int coHot) {
		this.coHot = coHot;
	}

	public String getCoIntroduce() {
		return coIntroduce;
	}

	public void setCoIntroduce(String coIntroduce) {
		this.coIntroduce = coIntroduce;
	}

	public String getCoIne() {
		return coIne;
	}

	public void setCoIne(String coIne) {
		this.coIne = coIne;
	}

	public String getCoRegion() {
		return coRegion;
	}

	public void setCoRegion(String coRegion) {
		this.coRegion = coRegion;
	}

	public Kind getKind() {
		return kind;
	}

	public void setKind(Kind kind) {
		this.kind = kind;
	}

	public String getCoPrice() {
		return coPrice;
	}

	public void setCoPrice(String coPrice) {
		this.coPrice = coPrice;
	}

	public int getCoNumber() {
		return coNumber;
	}

	public void setCoNumber(int coNumber) {
		this.coNumber = coNumber;
	}

	public String getCoPictrue() {
		return coPictrue;
	}

	public void setCoPictrue(String coPictrue) {
		this.coPictrue = coPictrue;
	}

	public String getCoPF() {
		return coPF;
	}

	public void setCoPF(String coPF) {
		this.coPF = coPF;
	}

	public String getCoHTP() {
		return coHTP;
	}

	public void setCoHTP(String coHTP) {
		this.coHTP = coHTP;
	}

	public String getCoS() {
		return coS;
	}

	public void setCoS(String coS) {
		this.coS = coS;
	}

	public List<Assess> getAssesses() {
		return assesses;
	}

	public void setAssesses(List<Assess> assesses) {
		this.assesses = assesses;
	}

	@Override
	public String toString() {
		return "coffee [id=" + id + ", coName=" + coName + ", coHot=" + coHot + ", coIntroduce=" + coIntroduce
				+ ", coIne=" + coIne + ", coRegion=" + coRegion + ", kind=" + kind + ", coPrice=" + coPrice
				+ ", coNumber=" + coNumber + ", coPictrue=" + coPictrue + ", coPF=" + coPF + ", coHTP=" + coHTP
				+ ", coS=" + coS + ", assesses=" + assesses + "]";
	}

}
