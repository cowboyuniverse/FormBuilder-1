package formbuilder.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;


import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;


@Entity(name = "question")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class Questions implements Serializable{
    private static final long serialVersionUID = 1L;
    

    @Id
    @Column(name = "question_id")
    @GeneratedValue
    private int id;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "description")
    private String description;
    
    @Column(name = "order_id")
    private int orderId; // in which order this item should be shown, when only
                            // by itself the default is 0

    
    @ManyToOne(cascade = { CascadeType.MERGE, CascadeType.PERSIST })
    @JoinColumn(name = "user_id")
    private User user;
    
    
    @ManyToOne
    @JoinColumn(name = "template_id")
    private Template template;
    
    public enum Type {
        TEXT,
        RADIOBUTTON,
        CHECKBOX,
        PULLDOWN
    }
    
    public Questions(){
    	
    }
    
    public Questions(User user, Template template){
    	this.user = user;
    	this.template = template;
    }
    
    @Enumerated(EnumType.ORDINAL)
    @Column(name = "type")
    private Type itemType;
    
    @Column(name = "required")
    private boolean isRequired;
    
    @ManyToOne
    private PdfField matchField;

    public int getId() {
		return id;
	}

	public void setId(int id) {
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

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }



    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Template getTemplate() {
		return template;
	}

	public void setTemplate(Template template) {
		this.template = template;
	}

	public Type getItemType() {
		return itemType;
	}

	public void setItemType(Type itemType) {
		this.itemType = itemType;
	}

	public boolean isRequired() {
        return isRequired;
    }

    public void setRequired(boolean isRequired) {
        this.isRequired = isRequired;
    }


    public PdfField getMatchField() {
        return matchField;
    }

    public void setMatchField(PdfField matchField) {
        this.matchField = matchField;
    }

    
}
