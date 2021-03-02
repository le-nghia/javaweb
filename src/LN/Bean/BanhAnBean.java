package LN.Bean;

import java.util.Date;

public class BanhAnBean {
	private String PatientID;
	private String DoctorID;
	private Date ExamineDate;
	private String Result;
	private String Treatments;
	
	public BanhAnBean(String PatientID, String DoctorID ,Date ExamineDate,String Result, String Treatments) {
		super();
		this.PatientID = PatientID;
		this.DoctorID = DoctorID;
		this.ExamineDate = ExamineDate;
		this.Result = Result;
		this.Treatments = Treatments;
	}
	public BanhAnBean() {
		super();
	}
	/**
	 * @return the patientID
	 */
	public String getPatientID() {
		return PatientID;
	}
	/**
	 * @param patientID the patientID to set
	 */
	public void setPatientID(String patientID) {
		PatientID = patientID;
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
	 * @return the examineDate
	 */
	public Date getExamineDate() {
		return ExamineDate;
	}
	/**
	 * @param examineDate the examineDate to set
	 */
	public void setExamineDate(Date examineDate) {
		ExamineDate = examineDate;
	}
	/**
	 * @return the result
	 */
	public String getResult() {
		return Result;
	}
	/**
	 * @param result the result to set
	 */
	public void setResult(String result) {
		Result = result;
	}
	/**
	 * @return the treatments
	 */
	public String getTreatments() {
		return Treatments;
	}
	/**
	 * @param treatments the treatments to set
	 */
	public void setTreatments(String treatments) {
		Treatments = treatments;
	}
	
	

}
