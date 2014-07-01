package com.sp.entity.dict;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dict_projecttype")
public class ProjectType {
	private int id;
	private String index;
	private String projectType;
	private String projectTypeAbbr;
	
	//���
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	//���
	@Column(name = "d_pt_index", length = 50) 
	public String getIndex() {
		return index;
	}
	public void setIndex(String index) {
		this.index = index;
	}
	
	//��Ŀ����
	@Column(name = "d_pt_projectType", length = 50) 
	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	
	//��Ŀ������д
	@Column(name = "d_pt_projectTypeAbbr", length = 50) 
	public String getProjectTypeAbbr() {
		return projectTypeAbbr;
	}
	
	public void setProjectTypeAbbr(String projectTypeAbbr) {
		this.projectTypeAbbr = projectTypeAbbr;
	}
}
