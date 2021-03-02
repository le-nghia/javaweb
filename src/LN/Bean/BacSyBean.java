package LN.Bean;

public class BacSyBean {
	private String DoctorID;
	private String DoctorlName;
	private String Address;
	private int PhoneNumber;
	
	public BacSyBean(String DoctorID,String DoctorlName,String Address,int PhoneNumber) {
		super();
		this.DoctorID = DoctorID;
		this.DoctorlName = DoctorlName;
		this.Address = Address;
		this.PhoneNumber = PhoneNumber;
	}
	public BacSyBean() {
		super();
	}
	/**
	 * @return the doctorID
	 */
	public String getDoctorID() {
		return DoctorID;
	}
	/**
	 * @param doctorID the doctorID to set
	 */
	public void setDoctorID(String doctorID) {
		DoctorID = doctorID;
	}
	/**
	 * @return the doctorlName
	 */
	public String getDoctorlName() {
		return DoctorlName;
	}
	/**
	 * @param doctorlName the doctorlName to set
	 */
	public void setDoctorlName(String doctorlName) {
		DoctorlName = doctorlName;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return Address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		Address = address;
	}
	/**
	 * @return the phoneNumber
	 */
	public int getPhoneNumber() {
		return PhoneNumber;
	}
	/**
	 * @param phoneNumber the phoneNumber to set
	 */
	public void setPhoneNumber(int phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	
	

}
