package com.mhk.main;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.mhk.model.Author;
import com.mhk.model.AutoBiography;
import com.mhk.util.HibernateUtil;

public class Test {
	public static void main(String[] args) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		AutoBiography biography = new AutoBiography();
		biography.setBookName("My Country My Life");
		session.save(biography);
		
		Author author = new Author();
		author.setName("L.K.Advani");
		author.setBiography(biography);
		session.save(author);

		transaction.commit();
		session.close();
	}
}
