/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

/**
 *
 * @author jhoma
 */
@Entity
public class AsignaturaInvitada implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Tutoria tutoria;
    @ManyToOne
    private Asignatura asignatura;
    private boolean invitada;
    private String recomendaciones;
    private String compromisos;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date fechainvitacion;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Tutoria getTutoria() {
        return tutoria;
    }

    public void setTutoria(Tutoria tutoria) {
        this.tutoria = tutoria;
    }

    public Asignatura getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(Asignatura asignatura) {
        this.asignatura = asignatura;
    }

    public boolean isInvitada() {
        return invitada;
    }

    public void setInvitada(boolean invitada) {
        this.invitada = invitada;
    }

    public String getRecomendaciones() {
        return recomendaciones;
    }

    public void setRecomendaciones(String recomendaciones) {
        this.recomendaciones = recomendaciones;
    }

    public String getCompromisos() {
        return compromisos;
    }

    public void setCompromisos(String compromisos) {
        this.compromisos = compromisos;
    }

    public Date getFechainvitacion() {
        return fechainvitacion;
    }

    public void setFechainvitacion(Date fechainvitacion) {
        this.fechainvitacion = fechainvitacion;
    }
    
    
}
