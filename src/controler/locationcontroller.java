package controler;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.CoinItem;
import model.locationitem;

public class locationcontroller {
	
	static EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("CoinWebSite");

	
	public void insert(locationitem item) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(item);
		em.getTransaction().commit();
		em.close();
	}
	
	public List<locationitem> showlocation(){
		EntityManager em = emfactory.createEntityManager();
		List<locationitem> items = em.createQuery("SELECT i FROM locationitem i").getResultList();
		return items;
		
	}
}
