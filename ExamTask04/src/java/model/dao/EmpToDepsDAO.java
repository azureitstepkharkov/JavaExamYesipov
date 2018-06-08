
package model.dao;

import java.util.List;
import model.pojo.EmpToDeps;
import model.util.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import org.hibernate.Query;
import org.hibernate.Session;


public class EmpToDepsDAO {
    public static List<EmpToDeps> layDS(){
        List<EmpToDeps> lst = null;
        try
        {
           Session  session = HibernateUtil.getSessionFactory().openSession();
           String hql = "from EmpToDeps";
           Query query = session.createQuery(hql);
           lst = query.list();
        }
        catch(Exception ex)
        {
           ex.printStackTrace();
        }
        return lst;
    }
    
    private Session createHibernateSession()
    {
        Session session = null;
        SessionFactory   sessionFactory  = null;
        ServiceRegistry  serviceRegistry = null;
        try {
            try {
                Configuration cfg = new Configuration().
                                        addResource("model/pojo/EmpToDeps.hbm.xml").configure();
                serviceRegistry = new StandardServiceRegistryBuilder().
                                      applySettings(cfg.getProperties()).build();
                sessionFactory = cfg.buildSessionFactory(serviceRegistry);
            } catch (Throwable e) {
                System.err.println("Failed to create sessionFactory object." + e);
                throw new ExceptionInInitializerError(e);
            }
            session = sessionFactory.openSession();
            System.out.println("Создание сессии");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return session;
    }
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /**
     * Процедура добавления записей в таблицу
     */
    public void recordAdd(EmpToDeps obj)
    {
        Session session = createHibernateSession();
        try {
            System.out.println("Добавление записи в таблицу БД");
            Transaction tx = session.beginTransaction();
            session.save(obj);
            tx.commit();
            System.out.println("\tЗаписи добавлены");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }   
}
