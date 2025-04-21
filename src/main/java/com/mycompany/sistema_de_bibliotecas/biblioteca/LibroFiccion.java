package com.mycompany.sistema_de_bibliotecas.biblioteca;

public class LibroFiccion extends Libro {

    private String genero;
  
    private String premiosLiterarios;

    public LibroFiccion(int id, String nombre, String tipoLibro, String autor, String genero,  String premiosLiterarios) {
        super(id, nombre, tipoLibro , autor);
        this.genero = genero;
        
        this.premiosLiterarios = premiosLiterarios;
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

    @Override
    public String toString() {
        return "Genero: " + genero + ", Premios Literarios: " + premiosLiterarios ;
    }

}
