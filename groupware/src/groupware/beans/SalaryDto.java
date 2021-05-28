package groupware.beans;

import java.sql.Date;

public class SalaryDto {
	private String empNo;
	private int poNo;
	private int salaryPay;
	private int salaryOvertime;
	private int salaryMeal;
	private int salaryTransportation;
	private String salaryDate;
	public SalaryDto() {
		super();
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public int getPoNo() {
		return poNo;
	}
	public void setPoNo(int poNo) {
		this.poNo = poNo;
	}
	public int getSalaryPay() {
		return salaryPay;
	}
	public void setSalaryPay(int salaryPay) {
		this.salaryPay = salaryPay;
	}
	public int getSalaryOvertime() {
		return salaryOvertime;
	}
	public void setSalaryOvertime(int salaryOvertime) {
		this.salaryOvertime = salaryOvertime;
	}
	public int getSalaryMeal() {
		return salaryMeal;
	}
	public void setSalaryMeal(int salaryMeal) {
		this.salaryMeal = salaryMeal;
	}
	public int getSalaryTransportation() {
		return salaryTransportation;
	}
	public void setSalaryTransportation(int salaryTransportation) {
		this.salaryTransportation = salaryTransportation;
	}
	public String getSalaryDate() {
		return salaryDate;
	}
	public void setSalaryDate(String salaryDate) {
		this.salaryDate = salaryDate;
	}
	

}
