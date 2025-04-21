package com.mycompany.sistema_de_bibliotecas.biblioteca;

public class Libro {

    private int id;
    private String nombre;
    private String tipoLibro;
    private String autor;
    private boolean disponible;

    public Libro(int id, String nombre, String tipoLibro, String autor) {
        this.id = id;
        this.nombre = nombre;
        this.tipoLibro = tipoLibro;
        this.autor = autor;
        this.disponible = true;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipoLibro() {
        return tipoLibro;
    }

    public void setTipoLibro(String tipoLibro) {
        this.tipoLibro = tipoLibro;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }

    @Override
    public String toString() {
        return "ID: " + id + ", Nombre: " + nombre + ", Tipo de Libro: " + tipoLibro + ", Autor: " + autor + ", Disponible: " + (disponible ? "si" : "no");
    }

}
