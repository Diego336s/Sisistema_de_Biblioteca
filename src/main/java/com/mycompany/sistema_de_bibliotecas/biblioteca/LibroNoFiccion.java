package com.mycompany.sistema_de_bibliotecas.biblioteca;

public class LibroNoFiccion extends Libro {

    private String genero;
   
    private String premiosLiterarios;
    private String areaTematica;
    private String tipoPublico;

    public LibroNoFiccion(int id, String nombre, String tipoLibro, String autor, String genero, String premiosLiterarios, String areaTematica, String tipoPublico) {
        super(id, nombre, tipoLibro, autor);
        this.genero = genero;
       
        this.premiosLiterarios = premiosLiterarios;
        this.areaTematica = areaTematica;
        this.tipoPublico = tipoPublico;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }



    public String getPremiosLiterarios() {
        return premiosLiterarios;
    }

    public void setPremiosLiterarios(String premiosLiterarios) {
        this.premiosLiterarios = premiosLiterarios;
    }

    public String getAreaTematica() {
        return areaTematica;
    }

    public void setAreaTematica(String areaTematica) {
        this.areaTematica = areaTematica;
    }

    public String getTipoPublico() {
        return tipoPublico;
    }

    public void setTipoPublico(String tipoPublico) {
        this.tipoPublico = tipoPublico;
    }

    @Override
    public String toString() {
        return "Genero: " + genero + ", Premios Literarios: " + premiosLiterarios
                + ", Area Tematica: " + areaTematica + ", Tipo de Publico: " + tipoPublico;
    }

}
