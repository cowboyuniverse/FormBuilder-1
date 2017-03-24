package formbuilder.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity(name = "Questiontext_answer")
public class QuestionTextAnswer implements Serializable{

	@Id
	@GeneratedValue
	private Integer id;

	private String answer; // text input from the user

	@OneToOne        //no cascade, since we don't want to delete the item when deleting the answer
	private Questions question; // match to the items which the answer belongs to

	@ManyToOne
	private User user;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Questions getQuestions() {
		return question;
	}

	public void setQuestoin(Questions questoin) {
		this.question = question;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
