package com.sp.md.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dict_projecttype")
public class CarOwnerBasicInfo {
	public int id;
	//车牌号
	public String carNo;
	//车架号
	public String carVIN;
	//车主姓名
	public String ownerName;
	//年龄
	public int ownerAge;
	//性别
	public int Sex;
	//职业
	public String ownerProfession;
	//证件类型
	public String ownerCertificeType;
	//证件号码
	public String ownerCertificeTypeNo;
	//特征
	public String ownerFeatures;
	//邮箱
	public String ownerEmail;
	//联系号码
	public String ownerPhone;
	//地址
	public String ownerAddr;
	//邮编
	public String ownerZipCode;
	//备注
	public String remark;
	//public int carID;
	
	/**
	 * @return the id
	 */
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the carNo
	 */
	@Column(name = "carNo") 
	public String getCarNo() {
		return carNo;
	}
	/**
	 * @param carNo the carNo to set
	 */
	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}
	/**
	 * 
	 * @return the carVIN
	 */
	public String getCarVIN() {
		return carVIN;
	}
	/**
	 * @param carVIN the carVIN to set
	 */
	public void setCarVIN(String carVIN) {
		this.carVIN = carVIN;
	}
	/**
	 * @return the ownerName
	 */
	public String getOwnerName() {
		return ownerName;
	}
	/**
	 * @param ownerName the ownerName to set
	 */
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	/**
	 * @return the ownerAge
	 */
	public int getOwnerAge() {
		return ownerAge;
	}
	/**
	 * @param ownerAge the ownerAge to set
	 */
	public void setOwnerAge(int ownerAge) {
		this.ownerAge = ownerAge;
	}
	/**
	 * @return the sex
	 */
	public int getSex() {
		return Sex;
	}
	/**
	 * @param sex the sex to set
	 */
	public void setSex(int sex) {
		Sex = sex;
	}
	/**
	 * @return the ownerProfession
	 */
	public String getOwnerProfession() {
		return ownerProfession;
	}
	/**
	 * @param ownerProfession the ownerProfession to set
	 */
	public void setOwnerProfession(String ownerProfession) {
		this.ownerProfession = ownerProfession;
	}
	/**
	 * @return the ownerCertificeType
	 */
	public String getOwnerCertificeType() {
		return ownerCertificeType;
	}
	/**
	 * @param ownerCertificeType the ownerCertificeType to set
	 */
	public void setOwnerCertificeType(String ownerCertificeType) {
		this.ownerCertificeType = ownerCertificeType;
	}
	/**
	 * @return the ownerCertificeTypeNo
	 */
	public String getOwnerCertificeTypeNo() {
		return ownerCertificeTypeNo;
	}
	/**
	 * @param ownerCertificeTypeNo the ownerCertificeTypeNo to set
	 */
	public void setOwnerCertificeTypeNo(String ownerCertificeTypeNo) {
		this.ownerCertificeTypeNo = ownerCertificeTypeNo;
	}
	/**
	 * @return the ownerFeatures
	 */
	public String getOwnerFeatures() {
		return ownerFeatures;
	}
	/**
	 * @param ownerFeatures the ownerFeatures to set
	 */
	public void setOwnerFeatures(String ownerFeatures) {
		this.ownerFeatures = ownerFeatures;
	}
	/**
	 * @return the ownerEmail
	 */
	public String getOwnerEmail() {
		return ownerEmail;
	}
	/**
	 * @param ownerEmail the ownerEmail to set
	 */
	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}
	/**
	 * @return the ownerPhone
	 */
	public String getOwnerPhone() {
		return ownerPhone;
	}
	/**
	 * @param ownerPhone the ownerPhone to set
	 */
	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}
	/**
	 * @return the ownerAddr
	 */
	public String getOwnerAddr() {
		return ownerAddr;
	}
	/**
	 * @param ownerAddr the ownerAddr to set
	 */
	public void setOwnerAddr(String ownerAddr) {
		this.ownerAddr = ownerAddr;
	}
	/**
	 * @return the ownerZipCode
	 */
	public String getOwnerZipCode() {
		return ownerZipCode;
	}
	/**
	 * @param ownerZipCode the ownerZipCode to set
	 */
	public void setOwnerZipCode(String ownerZipCode) {
		this.ownerZipCode = ownerZipCode;
	}
	/**
	 * @return the remark
	 */
	public String getRemark() {
		return remark;
	}
	/**
	 * @param remark the remark to set
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
