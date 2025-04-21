package com.mycompany.sistema_de_bibliotecas.biblioteca;

import java.text.SimpleDateFormat;
import java.util.*;

public class Prestamo {

    private int id;
    private Libro libro;
    private String prestatario;
    private String idPrestatario;
    private Date fechaPrestamo;
    private Date fechaLimite;
    private Date fechaDevolucion;

    public Prestamo(int id, Libro libro, String prestatario, String idPrestatario, Date fechaPrestamo, Date fechaLimite) {
        this.id = id;
        this.libro = libro;
        this.prestatario = prestatario;
        this.idPrestatario = idPrestatario;
        this.fechaPrestamo = fechaPrestamo;
        this.fechaLimite = fechaLimite;
        this.fechaDevolucion = null;

        libro.setDisponible(false);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public String getPrestatario() {
        return prestatario;
    }

    public void setPrestatario(String prestatario) {
        this.prestatario = prestatario;
    }

    public String getIdPrestatario() {
        return idPrestatario;
    }

    public void setIdPrestatario(String idPrestatario) {
        this.idPrestatario = idPrestatario;
    }

    public Date getFechaPrestamo() {
        return fechaPrestamo;
    }

    public void setFechaPrestamo(Date fechaPrestamo) {
        this.fechaPrestamo = fechaPrestamo;
    }

    public Date getFechaLimite() {
        return fechaLimite;
    }

    public void setFechaLimite(Date fechaLimite) {
        this.fechaLimite = fechaLimite;
    }

    public Date getFechaDevolucion() {
        return fechaDevolucion;
    }

    public void devolverLibro(Date fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
        this.libro.setDisponible(true);
    }

    public boolean isActivo() {
        return fechaDevolucion == null;
    }

    public boolean isVencido() {
        if (!isActivo()) {
            return false;
        }

        Date hoy = new Date();
        return hoy.after(fechaLimite);
    }

    @Override
    public String toString() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return " ID Prestamo " + id
                + "\n Libro: " + libro.getNombre()
                + "\n Prestatario: " + prestatario + " (" + idPrestatario + ") "
                + "\n Fecha del Prestamo: " + fechaPrestamo
                + "\n Fecha Limite: " + fechaLimite
                + "\n Fecha de Devolucion: " + (fechaDevolucion != null ? dateFormat.format(fechaDevolucion) : "No lo a devuelto")
                + "\n Estado: " + (isActivo() ? (isVencido() ? "Vencido" : "Activo") : "Devuelto");
    }

}
