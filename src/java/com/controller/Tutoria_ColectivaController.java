/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Fase;
import com.entity.Seccion;
import com.entity.Tutoria_Colectiva;
import com.services.Tutoria_ColectivaServices;
import java.io.Serializable;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author sgpaAdmin2
 */
@ManagedBean
@SessionScoped
public class Tutoria_ColectivaController implements Serializable {
    
    private Seccion seccion;
    private Fase fase;
    
    private Tutoria_Colectiva tutoriaColectiva = new Tutoria_Colectiva();
    
    private List<Tutoria_Colectiva> tutoriasColectivas = new LinkedList();

    Tutoria_ColectivaServices tutCser = new Tutoria_ColectivaServices();
    
    private int indTabTC = 0;

    public Tutoria_ColectivaController() {
    }

    public void crearTutoria() {
        if (tutoriaColectiva == null) {
            tutoriaColectiva = new Tutoria_Colectiva();
        }
        tutoriaColectiva.setSeccion(seccion);
        tutoriaColectiva.setFecha_creacion(new Date());
        tutoriaColectiva.setFase(fase);
        tutoriaColectiva.setEstado("Programada");
        tutoriaColectiva = tutCser.modificar(tutoriaColectiva);
    }
    
    public void eliminarTutoriaColectiva(Tutoria_Colectiva tc) {
        if (tc.getEstado().equals("Programada")) {
            tutCser.eliminar(tc);
        } else {
            FacesUtil.addErrorMessage("No se puede Eliminar: La tutoria ya ha sido realizada");
        }
        consultarTutoriasColectivas();
    }
    
    public void consultarTutoriasColectivas() {
        setTutoriasColectivas(tutCser.consultarTodo(Tutoria_Colectiva.class));
    }
   

    public Seccion getSeccion() {
        return seccion;
    }

    public void setSeccion(Seccion seccion) {
        this.seccion = seccion;
    }

    public Fase getFase() {
        return fase;
    }

    public void setFase(Fase fase) {
        this.fase = fase;
    }

    public Tutoria_Colectiva getTutoriaColectiva() {
        return tutoriaColectiva;
    }

    public void setTutoriaColectiva(Tutoria_Colectiva tutoriaColectiva) {
        this.tutoriaColectiva = tutoriaColectiva;
    }

    public List<Tutoria_Colectiva> getTutoriasColectivas() {
        return tutoriasColectivas;
    }

    public void setTutoriasColectivas(List<Tutoria_Colectiva> tutoriasColectivas) {
        this.tutoriasColectivas = tutoriasColectivas;
    }

    public int getIndTabTC() {
        return indTabTC;
    }

    public void setIndTabTC(int indTabTC) {
        this.indTabTC = indTabTC;
    }

   
}