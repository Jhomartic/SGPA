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
public class Tutoria_ProyectoController implements Serializable {
    
    private Tutoria_Proyecto tutoriaProyecto = new Tutoria_Proyecto();
    private Tutoria_Colectiva tutoriaColectiva;
    private Asignatura asignatura;
    private Proyecto_Aula proaula;
    
    private List<Tutoria_Proyecto> tutoriasProyecto = new LinkedList();
    private List<Asignatura> asignaturasSeccion;
    private List<Proyecto_Aula> proyectosSemestre = new LinkedList();
    private List<Asignatura> asignaturasInvitadas = new LinkedList();
    private List<Tutoria_Proyecto> tutoriasProyectoProgramadas = new LinkedList();
    private List<Tutoria_Proyecto> tutoriasProyectoRealizadas = new LinkedList();
    
    
    
    Tutoria_ProyectoServices tutPser = new Tutoria_ProyectoServices();
    
    private int indTabTP = 0;
    
    
    public void crearTutoriasProyecto() {
        if (tutoriaColectiva == null) {
            FacesUtil.addErrorMessage("Error: tutoriaColectiva es null");
            return;
        }

        if (proyectosSemestre == null || proyectosSemestre.isEmpty()) {
            FacesUtil.addErrorMessage("Error: proyectosSemestre es null o vacío");
            return;
        }

        if (asignaturasInvitadas == null || asignaturasInvitadas.isEmpty()) {
            FacesUtil.addErrorMessage("Error: asignaturasInvitadas es null o vacío");
            return;
        }

        int orden = 1; 
        for (Proyecto_Aula proyecto : proyectosSemestre) { 
            for (Asignatura asignatura : asignaturasInvitadas) {
                Tutoria_Proyecto nuevaTutoria = new Tutoria_Proyecto();
                nuevaTutoria.setTutoriaColectiva(tutoriaColectiva);
                tutoriaColectiva.setEstado("Programada");
                nuevaTutoria.setAsignatura(asignatura);
                nuevaTutoria.setProyectoAula(proyecto);
                nuevaTutoria.setHora(tutoriaColectiva.getFecha_programacion());
                nuevaTutoria.setOrden(orden);
                nuevaTutoria.setObservaciones(null);
                nuevaTutoria.setRecomendaciones(null);
                tutPser.modificar(nuevaTutoria);
            }
            orden++;
        }
    }
    
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
    
    public void seleccionarTutoriaColectiva(Tutoria_Colectiva tc) {
        tutoriaColectiva = tc;
    }
    
    public void consultarTutoriasXAsignaturaProfesor(Asignatura a) {
        tutoriasProyecto=tutPser.consultarTutoriaProyectoXAsignaturaInvitada(a);
        System.out.println("Lista tutorias proyecto: "+tutoriasProyecto);
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

    public int getIndTabTP() {
        return indTabTP;
    }

    public void setIndTabTP(int indTabTP) {
        this.indTabTP = indTabTP;
    }

    public List<Asignatura> getAsignaturasInvitadas() {
        return asignaturasInvitadas;
    }

    public void setAsignaturasInvitadas(List<Asignatura> asignaturasInvitadas) {
        this.asignaturasInvitadas = asignaturasInvitadas;
    }

    public List<Proyecto_Aula> getProyectosSemestre() {
        return proyectosSemestre;
    }

    public void setProyectosSemestre(List<Proyecto_Aula> proyectosSemestre) {
        this.proyectosSemestre = proyectosSemestre;
    }

    public Tutoria_Proyecto getTutoriaProyecto() {
        return tutoriaProyecto;
    }

    public void setTutoriaProyecto(Tutoria_Proyecto tutoriaProyecto) {
        this.tutoriaProyecto = tutoriaProyecto;
    }

    public List<Asignatura> getAsignaturasSeccion() {
        return asignaturasSeccion;
    }

    public void setAsignaturasSeccion(List<Asignatura> asignaturasSeccion) {
        this.asignaturasSeccion = asignaturasSeccion;
    }

    public List<Tutoria_Proyecto> getTutoriasProyectoProgramadas() {
        return tutoriasProyectoProgramadas;
    }

    public void setTutoriasProyectoProgramadas(List<Tutoria_Proyecto> tutoriasProyectoProgramadas) {
        this.tutoriasProyectoProgramadas = tutoriasProyectoProgramadas;
    }
    
}