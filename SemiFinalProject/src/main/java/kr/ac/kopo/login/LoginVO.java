package kr.ac.kopo.login;

public class LoginVO {
	private String cusNumber;
	private String cusName;
	private String cusId;
	private String cusPw;
	private String cusPhoneNum;
	private String cusEmailAddress;
	private String cusOccupation;
	private String joinPath;
	private String accountNumber;
	
	public String toString() {
		return "LoginVO [cusNumber=" + cusNumber + ", cusName=" + cusName + ", cusId=" + cusId + ", cusPw=" + cusPw
				+ ", cusPhoneNum=" + cusPhoneNum + ", cusEmailAddress=" + cusEmailAddress + ", cusOccupation="
				+ cusOccupation + ", joinPath=" + joinPath + ", accountNumber=" + accountNumber + "]";
	}

	public LoginVO() {
		super();
	}
	
	public LoginVO(String cusNumber, String cusName, String cusId, String cusPw, String cusPhoneNum,
			String cusEmailAddress, String cusOccupation, String joinPath, String accountNumber) {
		super();
		this.cusNumber = cusNumber;
		this.cusName = cusName;
		this.cusId = cusId;
		this.cusPw = cusPw;
		this.cusPhoneNum = cusPhoneNum;
		this.cusEmailAddress = cusEmailAddress;
		this.cusOccupation = cusOccupation;
		this.joinPath = joinPath;
		this.accountNumber = accountNumber;
	}

	public String getCusNumber() {
		return cusNumber;
	}

	public void setCusNumber(String cusNumber) {
		this.cusNumber = cusNumber;
	}

	public String getCusName() {
		return cusName;
	}

	public void setCusName(String cusName) {
		this.cusName = cusName;
	}

	public String getCusId() {
		return cusId;
	}

	public void setCusId(String cusId) {
		this.cusId = cusId;
	}

	public String getCusPw() {
		return cusPw;
	}

	public void setCusPw(String cusPw) {
		this.cusPw = cusPw;
	}

	public String getCusPhoneNum() {
		return cusPhoneNum;
	}

	public void setCusPhoneNum(String cusPhoneNum) {
		this.cusPhoneNum = cusPhoneNum;
	}

	public String getCusEmailAddress() {
		return cusEmailAddress;
	}

	public void setCusEmailAddress(String cusEmailAddress) {
		this.cusEmailAddress = cusEmailAddress;
	}

	public String getCusOccupation() {
		return cusOccupation;
	}

	public void setCusOccupation(String cusOccupation) {
		this.cusOccupation = cusOccupation;
	}

	public String getJoinPath() {
		return joinPath;
	}

	public void setJoinPath(String joinPath) {
		this.joinPath = joinPath;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}



	
}
