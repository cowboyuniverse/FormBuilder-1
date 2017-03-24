package formbuilder.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderColumn;

import java.util.ArrayList;
import javax.persistence.CollectionTable;

import javax.persistence.ElementCollection;

import javax.persistence.JoinColumn;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


@Entity(name = "binder")
public class Binder implements Serializable {
	
	@Id
	@GeneratedValue
  	@Column(name = "binder_id")
	private Integer id;
	
    @Column(name = "name")
	private String name;
    
    @Column(name = "description")
	private String description;
    
    @Column(name = "available")
	private boolean available; 	// form can be disabled for example if the admin wants to make changes
	
	@ManyToOne
	private User user;
	
    @OneToMany(mappedBy = "binder", cascade = CascadeType.ALL)
    @OrderBy("template_id")
    private List<Template> templates;
	
	@Column(name = "create_date")
	private Date createDate;
	
	@Column(name = "update_date")
	private Date updateDate;
	@Column(name = "submit_date")
	private Date submitDate;
	@Column(name = "finished")
	private boolean isfinished;

	public Binder(){
		
	}
	
	public Binder(String name){
		this.name = name;
		templates =  new ArrayList<Template>();
	}	
	
	
	
	public List<Template> getTemplates() {
		return templates;
	}

	public void setTemplates(List<Template> templates) {
		this.templates = templates;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	public boolean isIsfinished() {
		return isfinished;
	}
	public void setIsfinished(boolean isfinished) {
		this.isfinished = isfinished;
	}
}
