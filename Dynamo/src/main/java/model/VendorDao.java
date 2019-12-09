package model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class VendorDao {
	private Configuration conf;
	private SessionFactory factory;
	private Session session;
	private Transaction t;
	public void save(Vendor v)
	{
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		session.save(v);
		t.commit();
	}
	public int login(Vendor v) {
		int flag=0;
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		List list=session.createQuery("from Vendor").list();
		Iterator it=list.iterator();
		while(it.hasNext())
		{
			Vendor obj=(Vendor)it.next();
			if(obj.getEmail().equals(v.getEmail()) && obj.getPassword().equals(v.getPassword()))
			{
				flag=obj.getId();
			}
			
		}
		return flag;
	}
	
	public void service(Vendor_service v)
	{
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		session.save(v);
		t.commit();
	}
	public List display(int vid)
	{
		List list=new ArrayList();
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		List li=session.createQuery("from Vendor_service").list();
		Iterator it=li.iterator();
		while(it.hasNext())
		{
			Vendor_service obj=(Vendor_service)it.next();
			if(vid==obj.getVid())
			{
				list.add(obj);
			}
			
		}
		
		return list;
	}
	public List saloon() {
		
		List list=new ArrayList();
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		List li=session.createQuery("from Vendor_service").list();
		Iterator it=li.iterator();
		while(it.hasNext())
		{
			Vendor_service obj=(Vendor_service)it.next();
			if(obj.getService_type().equals("Saloon at home"))
			{
				list.add(obj);
			}
			
		}
		
		return list;
	}
	public void service_update(Vendor_service vs) {
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		Vendor_service obj=session.get(Vendor_service.class, vs.getId());
		obj.setService_name(vs.getService_name());
		obj.setService_type(vs.getService_type());
		obj.setVisit_charge(vs.getVisit_charge());
		obj.setWarranty(vs.getWarranty());
		session.update(obj);
		t.commit();
		
	}
	public void service_delete(Vendor_service vs) {
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		Vendor_service obj=session.get(Vendor_service.class, vs.getId());
		session.delete(obj);
		t.commit();
		
	}
	public List all_display() {
		List list=new ArrayList();
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		List li=session.createQuery("from Vendor_service").list();
		return li;
	}
	public Vendor apply(Vendor_service vs) {
		
		conf=new Configuration().configure("hibernate.cfg.xml");
		factory=conf.buildSessionFactory();
		session=factory.openSession();
		t=session.beginTransaction();
		Vendor obj=session.get(Vendor.class, vs.getVid());
		return obj;
	}

}
