package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;

//import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Expense;
import com.entity.User;

public class ExpenseDao {
	private SessionFactory factory = null;
	private Session session = null;
	private Transaction tx = null;
	
	public ExpenseDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public boolean saveExpense(Expense ex) {
		boolean f =false;
		
		try {
			session=factory.openSession();
			tx = session.beginTransaction();
			session.save(ex);
			tx.commit();
			f=true;
			}
		catch(Exception e) {
			if(tx!=null) {
				f = false;
				e.printStackTrace();
			}
		}
		
		return f;
	}
	
	@SuppressWarnings("deprecation")
	public List<Expense> getAllExpenseByUser(User user){
		List<Expense> list = new ArrayList<>();
		try {
			session=factory.openSession();
			Query q = session.createQuery("from expense where user=:use");
		    q.setParameter("us", user);
			list= q.list();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
