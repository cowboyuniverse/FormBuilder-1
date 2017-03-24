package formbuilder.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import formbuilder.model.Binder;
import formbuilder.model.Block;
import formbuilder.model.Form;
import formbuilder.model.Item;
import formbuilder.model.Page;
import formbuilder.model.Questions;
import formbuilder.model.Selection;
import formbuilder.model.Template;
import formbuilder.model.dao.FormDao;

@Repository
public class FormDaoImpl implements FormDao {
	
	@PersistenceContext
    private EntityManager entityManager;

	@Override
	public Form getForm( Integer id ) {
		return entityManager.find(Form.class, id);
	}

	@Override
	public List<Form> getForms() {
		return entityManager.createQuery("from form order by id",Form.class).getResultList();
	}

	@Override
	@Transactional
	public Form saveForm(Form form) {
		return entityManager.merge(form);
	}

	public Page getPageById(Integer id){
		return entityManager.find(Page.class, id);
	}
	
	@Override
	@Transactional
	public Page savePage(Page page) {
		
		return entityManager.merge(page);
	}
	
	@Override
	@Transactional
	public Block saveBlock(Block block) {
		
		return entityManager.merge(block);
	}

	@Override
	public List<Block> getBlocks() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Block getBlockById(Integer id) {
		return entityManager.find(Block.class, id);
	}

	@Override
	@Transactional
	public Item saveItem(Item item) {
		return entityManager.merge(item);
	}

	@Override
	@Transactional
	public Selection saveSelection(Selection selection) {
		return entityManager.merge(selection);
	}

	@Override
	public Item getItemById(Integer id) {
		return entityManager.find(Item.class, id);
	}

	@Override
	@Transactional
	public void deleteForm(Form form) {
		entityManager.remove(form);
		
	}

	@Override
	public Questions getQuestions(Integer id) {
		return entityManager.find(Questions.class, id);
	}

	@Override
	public List<Questions> getQuestions() {
		
		return entityManager.createQuery("from User order by user_id", Questions.class).getResultList();
	}

	@Override
	public Questions saveQuestion(Questions question) {
		return entityManager.merge(question);
	}

	@Override
	public void delete(Questions question) {
		entityManager.remove( question );
		
	}

	@Override
	public void delete(int id) {
    	Questions question = entityManager.find( Questions.class, id );
    	entityManager.remove( question );
		
	}

	@Override
	public Template getTemplate(Integer id) {
		return entityManager.find(Template.class, id);
	}

	@Override
	public Template saveTemplate(Template template) {
		return entityManager.merge(template);

	}
	

	

	@Override
	public Binder saveBinder(Binder binder) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteBinder(Binder binder) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public Binder getBinder( Integer id ) {
		return entityManager.find(Binder.class, id);
	}

	@Override
	public List<Binder> getBinders(){
		return entityManager.createQuery("from form order by id",Binder.class).getResultList();
	}
}
