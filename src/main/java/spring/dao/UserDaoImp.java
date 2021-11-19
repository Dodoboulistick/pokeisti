package spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.model.User;

@Repository @Transactional
public class UserDaoImp implements UserDao  {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(User user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public List<User> list() {
		@SuppressWarnings("unchecked")
		TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("from User");
		return query.getResultList();
	}

	@Override
	public List<User> getUser(String email) {
		
		@SuppressWarnings("unchecked")
		TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("from User where email = :email").setParameter("email", email);
		return query.getResultList();
	}

	@Override
	public void delete(String email) {
		Session session = sessionFactory.getCurrentSession();
		User userTodelete = session.get(User.class, email);
		session.delete(userTodelete);
	}

	@Override
	public void update(User user) {
	}

}
