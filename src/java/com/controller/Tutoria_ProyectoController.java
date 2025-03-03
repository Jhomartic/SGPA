/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Asignatura;
import com.entity.Proyecto_Aula;
import com.entity.Tutoria_Colectiva;
import com.entity.Tutoria_Proyecto;
import com.services.Tutoria_ProyectoServices;
import java.io.Serializable;
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
public class Tutoria_ProyectoController implements Serializable {
    
    private Tutoria_Colectiva tutoriaColectiva;
    private Asignatura asignatura;
    private Proyecto_Aula proaula;
    
    private List<Tutoria_Proyecto> tutoriasProyecto = new LinkedList();
    private List<Tutoria_Proyecto> tutoriasProyectoRealizadas = new LinkedList();
    private List<Asignatura> asignaturasSeccion;
    private List<Asignatura> asignaturasInvitadas = new LinkedList();
    private List <Proyecto_Aula> proyectosAula;
    
    Tutoria_ProyectoServices tutPser = new Tutoria_ProyectoServices();
    
    private int indTabTP = 0;
    
    public void seleccionarAsignatura(Asignatura a) {
        if (!asignaturaSeleccionada(a)) {
            asignaturasInvitadas.add(a);
        }
    }
    
    public void quitarAsignatura(Asignatura a) {
        if (asignaturaSeleccionada(a)) {
            asignaturasInvitadas.remove(a);
        }
    }
    
    public boolean asignaturaSeleccionada(Asignatura a) {
        boolean asigs = false;
        if (asignaturasInvitadas != null) {
            
            for (Asignatura asi : asignaturasInvitadas) {
                if (asi.getId().equals(a.getId())) {
                    asigs = true;
                }
            }
        }
        return asigs;
    }
    
    public boolean validarAsignaturasInvitadas(){
        if(asignaturasInvitadas.size()<2){
            FacesUtil.addErrorMessage("Seleccione 2 o mas asignaturas");
            return false;
        }
        
        return true;
    }
   

    public Tutoria_Colectiva getTutoriaColectiva() {
        return tutoriaColectiva;
    }

    public void setTutoriaColectiva(Tutoria_Colectiva tutoriaColectiva) {
        this.tutoriaColectiva = tutoriaColectiva;
    }

    public Asignatura getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(Asignatura asignatura) {
        this.asignatura = asignatura;
    }

    public Proyecto_Aula getProaula() {
        return proaula;
    }

    public void setProaula(Proyecto_Aula proaula) {
        this.proaula = proaula;
    }

    public List<Tutoria_Proyecto> getTutoriasProyecto() {
        return tutoriasProyecto;
    }

    public void setTutoriasProyecto(List<Tutoria_Proyecto> tutoriasProyecto) {
        this.tutoriasProyecto = tutoriasProyecto;
    }

    public List<Tutoria_Proyecto> getTutoriasProyectoRealizadas() {
        return tutoriasProyectoRealizadas;
    }

    public void setTutoriasProyectoRealizadas(List<Tutoria_Proyecto> tutoriasProyectoRealizadas) {
        this.tutoriasProyectoRealizadas = tutoriasProyectoRealizadas;
    }

    public List <Proyecto_Aula> getProyectosAula() {
        return proyectosAula;
    }

    public void setProyectosAula(List <Proyecto_Aula> proyectosAula) {
        this.proyectosAula = proyectosAula;
    }

    public int getIndTabTP() {
        return indTabTP;
    }

    public void setIndTabTP(int indTabTP) {
        this.indTabTP = indTabTP;
    }

    public List<Asignatura> getAsignaturasSeccion() {
        return asignaturasSeccion;
    }

    public void setAsignaturasSeccion(List<Asignatura> asignaturasSeccion) {
        this.asignaturasSeccion = asignaturasSeccion;
    }

    public List<Asignatura> getAsignaturasInvitadas() {
        return asignaturasInvitadas;
    }

    public void setAsignaturasInvitadas(List<Asignatura> asignaturasInvitadas) {
        this.asignaturasInvitadas = asignaturasInvitadas;
    }
    
}