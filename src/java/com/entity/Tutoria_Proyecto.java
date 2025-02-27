/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author jhoma
 */
@Entity
public class Tutoria_Proyecto implements Serializable {
    private static long serialVersionUID = 1L;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne
    private Asignatura asignatura;
    @ManyToOne
    private Proyecto_Aula proyectoAula;
    @ManyToOne
    private Tutoria_Colectiva tutoriaColectiva;
    private String hora;
    private Integer orden;
    private String observaciones;
    private String recomendaciones;
            

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (getId() != null ? getId().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tutoria_Proyecto)) {
            return false;
        }
        Tutoria_Proyecto other = (Tutoria_Proyecto) object;
        if ((this.getId() == null && other.getId() != null) || (this.getId() != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.entity.Tutoria_proyecto[ id=" + getId() + " ]";
    }

    public Asignatura getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(Asignatura asignatura) {
        this.asignatura = asignatura;
    }

    public Proyecto_Aula getProyectoAula() {
        return proyectoAula;
    }

    public void setProyectoAula(Proyecto_Aula proyectoAula) {
        this.proyectoAula = proyectoAula;
    }

    public Tutoria_Colectiva getTutoriaColectiva() {
        return tutoriaColectiva;
    }

    public void setTutoriaColectiva(Tutoria_Colectiva tutoriaColectiva) {
        this.tutoriaColectiva = tutoriaColectiva;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public Integer getOrden() {
        return orden;
    }

    public void setOrden(Integer orden) {
        this.orden = orden;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public String getRecomendaciones() {
        return recomendaciones;
    }

    public void setRecomendaciones(String recomendaciones) {
        this.recomendaciones = recomendaciones;
    }
    
}
