package team.singal.coffee.pojo;

import java.util.List;

public class payShow {


private List<String> coffesPic;
private List<String> coffesname;
private List<Integer> coffesNum;
private List<String> coffesPrice;
private List<String> receiveInfoId;
private List<String> receiveInfoName;
private List<String> receiveInfoAddress;
private List<String> receiveInfoPhoneNumber;
private List<String> clubCardId;
private List<String> clubCardNumber;
private List<String> clubCardType;
private List<String> clubCardBalance;


public payShow() {
	super();
}








public payShow(List<String> coffesPic, List<String> coffesname, List<Integer> coffesNum, List<String> coffesPrice,
		List<String> receiveInfoId, List<String> receiveInfoName, List<String> receiveInfoAddress,
		List<String> receiveInfoPhoneNumber, List<String> clubCardId, List<String> clubCardNumber,
		List<String> clubCardType, List<String> clubCardBalance) {
	super();
	this.coffesPic = coffesPic;
	this.coffesname = coffesname;
	this.coffesNum = coffesNum;
	this.coffesPrice = coffesPrice;
	this.receiveInfoId = receiveInfoId;
	this.receiveInfoName = receiveInfoName;
	this.receiveInfoAddress = receiveInfoAddress;
	this.receiveInfoPhoneNumber = receiveInfoPhoneNumber;
	this.clubCardId = clubCardId;
	this.clubCardNumber = clubCardNumber;
	this.clubCardType = clubCardType;
	this.clubCardBalance = clubCardBalance;
}








public List<Integer> getCoffesNum() {
	return coffesNum;
}

public void setCoffesNum(List<Integer> coffesNum) {
	this.coffesNum = coffesNum;
}


public List<String> getReceiveInfoName() {
	return receiveInfoName;
}




public void setReceiveInfoName(List<String> receiveInfoName) {
	this.receiveInfoName = receiveInfoName;
}




public List<String> getCoffesPrice() {
	return coffesPrice;
}








public void setCoffesPrice(List<String> coffesPrice) {
	this.coffesPrice = coffesPrice;
}








public List<String> getCoffesPic() {
	return coffesPic;
}
public void setCoffesPic(List<String> coffesPic) {
	this.coffesPic = coffesPic;
}
public List<String> getCoffesname() {
	return coffesname;
}
public void setCoffesname(List<String> coffesname) {
	this.coffesname = coffesname;
}

public List<String> getReceiveInfoId() {
	return receiveInfoId;
}
public void setReceiveInfoId(List<String> receiveInfoId) {
	this.receiveInfoId = receiveInfoId;
}
public List<String> getReceiveInfoAddress() {
	return receiveInfoAddress;
}
public void setReceiveInfoAddress(List<String> receiveInfoAddress) {
	this.receiveInfoAddress = receiveInfoAddress;
}
public List<String> getReceiveInfoPhoneNumber() {
	return receiveInfoPhoneNumber;
}
public void setReceiveInfoPhoneNumber(List<String> receiveInfoPhoneNumber) {
	this.receiveInfoPhoneNumber = receiveInfoPhoneNumber;
}
public List<String> getClubCardId() {
	return clubCardId;
}
public void setClubCardId(List<String> clubCardId) {
	this.clubCardId = clubCardId;
}
public List<String> getClubCardNumber() {
	return clubCardNumber;
}
public void setClubCardNumber(List<String> clubCardNumber) {
	this.clubCardNumber = clubCardNumber;
}
public List<String> getClubCardType() {
	return clubCardType;
}
public void setClubCardType(List<String> clubCardType) {
	this.clubCardType = clubCardType;
}
public List<String> getClubCardBalance() {
	return clubCardBalance;
}
public void setClubCardBalance(List<String> clubCardBalance) {
	this.clubCardBalance = clubCardBalance;
}

@Override
public String toString() {
	return "payShow [coffesPic=" + coffesPic + ", coffesname=" + coffesname + ", coffesNum=" + coffesNum
			+ ", coffesPrice=" + coffesPrice + ", receiveInfoId=" + receiveInfoId + ", receiveInfoName="
			+ receiveInfoName + ", receiveInfoAddress=" + receiveInfoAddress + ", receiveInfoPhoneNumber="
			+ receiveInfoPhoneNumber + ", clubCardId=" + clubCardId + ", clubCardNumber=" + clubCardNumber
			+ ", clubCardType=" + clubCardType + ", clubCardBalance=" + clubCardBalance + "]";
}







}
