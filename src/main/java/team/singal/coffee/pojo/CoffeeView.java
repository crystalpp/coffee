package team.singal.coffee.pojo;

public class CoffeeView {

	private String coffeeKind;
	private String coffeeId;
	private String coName;
	private int coHot;
	private String coIntroduce;
	private String coIne;
	private String coRegion;
	private String coPrice;
	private int coNumber;
	private String coPicture;
	private String coPF;
	private String coHTP;
	private String coS;

	public CoffeeView() {
		super();
	}

	public CoffeeView(String coffeeKind, String coffeeId, String coName, int coHot, String coIntroduce, String coIne,
			String coRegion, String coPrice, int coNumber, String coPicture, String coPF, String coHTP, String coS) {
		super();
		this.coffeeKind = coffeeKind;
		this.coffeeId = coffeeId;
		this.coName = coName;
		this.coHot = coHot;
		this.coIntroduce = coIntroduce;
		this.coIne = coIne;
		this.coRegion = coRegion;
		this.coPrice = coPrice;
		this.coNumber = coNumber;
		this.coPicture = coPicture;
		this.coPF = coPF;
		this.coHTP = coHTP;
		this.coS = coS;
	}

	public String getCoffeeKind() {
		return coffeeKind;
	}

	public void setCoffeeKind(String coffeeKind) {
		this.coffeeKind = coffeeKind;
	}

	public String getCoffeeId() {
		return coffeeId;
	}

	public void setCoffeeId(String coffeeId) {
		this.coffeeId = coffeeId;
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

	public String getCoPicture() {
		return coPicture;
	}

	public void setCoPicture(String coPicture) {
		this.coPicture = coPicture;
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

	@Override
	public String toString() {
		return "CoffeeView [coffeeKind=" + coffeeKind + ", coffeeId=" + coffeeId + ", coName=" + coName + ", coHot="
				+ coHot + ", coIntroduce=" + coIntroduce + ", coIne=" + coIne + ", coRegion=" + coRegion + ", coPrice="
				+ coPrice + ", coNumber=" + coNumber + ", coPicture=" + coPicture + ", coPF=" + coPF + ", coHTP="
				+ coHTP + ", coS=" + coS + "]";
	}

}
