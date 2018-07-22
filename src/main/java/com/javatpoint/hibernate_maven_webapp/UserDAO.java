/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javatpoint.hibernate_maven_webapp;

import com.javatpoint.entity.UserEn;
import org.hibernate.Session;

/**
 *
 * @author narottamkrjha
 */
public class UserDAO {
    public static boolean register(UserEn u){
       
        Session session = null;
        org.hibernate.Transaction t = null;
        int i = -1;
        try{
           session = new org.hibernate.cfg.Configuration().configure("UserEn.cfg.xml").buildSessionFactory().openSession();
           
           
            t = session.beginTransaction();
            
        
             i = (Integer) session.save(u);
            t.commit();
            
        }catch(Exception e){
            if(t.isActive())
            t.rollback();
            e.printStackTrace();
        }finally{
            session.close();
        }
        
        
        if(i > 0)
        return true;
        else
        return false;
    }
}
