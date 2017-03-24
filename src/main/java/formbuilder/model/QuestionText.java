package formbuilder.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity(name = "question_text")
public class QuestionText extends Item implements Serializable {
	
	@Column(name="text_length")
	private int textLength;
	
	@OneToOne(mappedBy="question",cascade=CascadeType.ALL)
	private QuestionTextAnswer answer;
	
	public int getTextLength() {
		return textLength;
	}
	public void setTextLength(int textLength) {
		this.textLength = textLength;
	}
	public QuestionTextAnswer getTextAnswer() {
		return answer;
	}
	public void setQuestionTextAnswer(QuestionTextAnswer textAnswer) {
		this.answer = textAnswer;
	}
	
}

