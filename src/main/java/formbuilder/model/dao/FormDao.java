package formbuilder.model.dao;

import java.util.List;

import formbuilder.model.Binder;
import formbuilder.model.Block;
import formbuilder.model.Form;
import formbuilder.model.Item;
import formbuilder.model.Page;
import formbuilder.model.Questions;
import formbuilder.model.Selection;
import formbuilder.model.Template;

public interface FormDao {
	
	Form getForm(Integer id);	
	List<Form> getForms();
	Form saveForm(Form form);
	void deleteForm(Form form);
	
	Page getPageById(Integer id);
	Page savePage(Page page);
	
	List<Block> getBlocks();
	Block getBlockById(Integer id);
	Block saveBlock(Block block);
	
	Item getItemById(Integer id); //
	Item saveItem(Item item); //
	
	Selection saveSelection(Selection selection);
	
	
	
	Questions getQuestions(Integer id);
	List<Questions> getQuestions();
	Questions saveQuestion(Questions question);
	void delete(Questions question);
	void delete(int id);
	Template getTemplate(Integer id);				//
	Template saveTemplate(Template template);		//
	Binder saveBinder(Binder binder);				//*
	Binder getBinder(Integer id);					//
	List<Binder>getBinders();						//
	void deleteBinder(Binder binder);				//*
	

	
}
