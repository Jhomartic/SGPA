
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.services;

import com.dao.ImplDao;
import com.entity.Asignatura;
import com.entity.Proyecto_Aula;
import com.entity.Tutoria_Colectiva;
import com.entity.Tutoria_Proyecto;
import com.implDao.ITutoria_Proyecto;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
/**
 *
 * @author Jcmm
 */
public class Tutoria_ProyectoServices extends ImplDao<Tutoria_Proyecto, Long> implements ITutoria_Proyecto,Serializable{
    
    public List<Tutoria_Proyecto> consultarTutoriaProyectoXAsignaturaInvitada(Asignatura a) {
        List<Tutoria_Proyecto> tutorias = new LinkedList();
        try {
            EntityManager em = getEntityManagger();
            em.getTransaction().begin();
            String q = "select t from Tutoria_Proyecto t where t.asignatura.id = ?1";
            System.out.println(" Consulta: " + q);
            Query qu = em.createQuery(q)
                    .setParameter(1, a.getId());
            tutorias = qu.getResultList();
             em.getTransaction().commit();
            System.out.println("consultarTutoriaProyectoXAsignaturaInvitada");  
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return tutorias;
    }
    
    public List<Tutoria_Proyecto> consultarTutoriaProyectoXProyectoAula(Proyecto_Aula p) {
        List<Tutoria_Proyecto> tutorias = new LinkedList();
        try {
            EntityManager em = getEntityManagger();
            em.getTransaction().begin();
            String q = "select t from Tutoria_Proyecto t where t.proyecto.id = ?1";
            System.out.println(" Consulta: " + q);
            Query qu = em.createQuery(q)
                    .setParameter(1, p.getId());
            tutorias = qu.getResultList();
             em.getTransaction().commit();
            System.out.println("consultarTutoriaProyectoXProyectoAula");  
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return tutorias;
    }
   
}
