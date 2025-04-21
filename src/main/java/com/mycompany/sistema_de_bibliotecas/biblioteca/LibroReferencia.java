package com.mycompany.sistema_de_bibliotecas.biblioteca;

public class LibroReferencia extends Libro {

    private String genero;
   
    private String premiosLiterarios;
    private String areaTematica;
    private String tipoPublico;
    private String campoAcademico;
    private String acceso;

    public LibroReferencia(int id, String nombre, String tipoLibro, String autor, String genero,  String premiosLiterarios, String areaTematica, String tipoPublico, String campoAcademico, String acceso) {
        super(id, nombre, tipoLibro, autor);
        this.genero = genero;
       
        this.premiosLiterarios = premiosLiterarios;
        this.areaTematica = areaTematica;
        this.tipoPublico = tipoPublico;
        this.campoAcademico = campoAcademico;
        this.acceso = acceso;
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

    public String getCampoAcademico() {
        return campoAcademico;
    }

    public void setCampoAcademico(String campoAcademico) {
        this.campoAcademico = campoAcademico;
    }

    public String getAcceso() {
        return acceso;
    }

    public void setAcceso(String acceso) {
        this.acceso = acceso;
    }

    @Override
    public String toString() {
        return "Genero: " + genero + ", Premios Literarios: " + premiosLiterarios
                + ", Area Tematica: " + areaTematica + ", Tipo de Publico: " + tipoPublico + ", Campo Academico: " + campoAcademico + ", Acceso: " + acceso;
    }

}
