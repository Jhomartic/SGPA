/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;

/**
 *
 * @author jhoma
 */
@Entity
public class Tutoria_Colectiva implements Serializable {
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
    private String estado;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date fecha_creacion;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date fecha_programacion;
    @ManyToOne
    private Seccion seccion;
    @ManyToOne
    private Fase fase;
    @OneToMany(mappedBy = "tutoriaColectiva")
    private List<Tutoria_Proyecto> tutoriasProyecto;

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
        if (!(object instanceof Tutoria_Colectiva)) {
            return false;
        }
        Tutoria_Colectiva other = (Tutoria_Colectiva) object;
        if ((this.getId() == null && other.getId() != null) || (this.getId() != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.entity.Tutoria_Colectiva[ id=" + getId() + " ]";
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Date getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(Date fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public Date getFecha_programacion() {
        return fecha_programacion;
    }

    public void setFecha_programacion(Date fecha_programacion) {
        this.fecha_programacion = fecha_programacion;
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

    public List<Tutoria_Proyecto> getTutoriasProyecto() {
        return tutoriasProyecto;
    }

    public void setTutoriasProyecto(List<Tutoria_Proyecto> tutoriasProyecto) {
        this.tutoriasProyecto = tutoriasProyecto;
    }
    
}
