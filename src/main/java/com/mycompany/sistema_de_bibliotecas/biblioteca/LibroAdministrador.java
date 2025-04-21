package com.mycompany.sistema_de_bibliotecas.biblioteca;

import java.util.*;

public class LibroAdministrador {

    private static LibroAdministrador instance;
    private ArrayList<Libro> libros;
    private ArrayList<Prestamo> prestamos;
    private int aumentoLibroId;
    private int aumentoPrestamoId;

    public LibroAdministrador() {
        this.libros = new ArrayList<>();
        this.prestamos = new ArrayList<>();
        this.aumentoLibroId = 1;
        this.aumentoPrestamoId = 1;

    }

    public static synchronized LibroAdministrador getInstance() {
        if (instance == null) {
            instance = new LibroAdministrador();
        }

        return instance;
    }

    public ArrayList<Libro> getTodoLibro() {
        return libros;
    }

    public ArrayList<Libro> getLibroDisponible() {
        ArrayList<Libro> libroDisponible = new ArrayList<>();
        for (Libro libro : libros) {
            if (libro.isDisponible()) {
                libroDisponible.add(libro);
            }
        }
        return libroDisponible;
    }

    public Libro getBuscarLibroPorId(int id) {
        for (Libro libro : libros) {
            if (libro.getId() == id) {
                return libro;
            }
        }
        return null;
    }

    public void agregarLibro(Libro libro) {
        libros.add(libro);
    }

    public boolean editarLibro(Libro editarLibro) {
        for (int i = 0; i < libros.size(); i++) {
            if (libros.get(i).getId() == editarLibro.getId()) {
                libros.set(i, editarLibro);
                return true;
            }
        }
        return false;
    }

    public boolean eliminarLibro(int id) {
        for (Prestamo prestamo : prestamos) {
            if (prestamo.getLibro().getId() == id && prestamo.isActivo()) {
                return false;
            }
        }

        for (int i = 0; i < libros.size(); i++) {
            if (libros.get(i).getId() == id) {
                libros.remove(i);
                return true;
            }
        }
        return false;
    }

    public ArrayList<Prestamo> getTodoPrestamo() {
        return prestamos;
    }

    public ArrayList<Prestamo> getPrestamoActivo() {
        ArrayList<Prestamo> prestamosActivos = new ArrayList<>();
        for (Prestamo prestamo : prestamos) {
            if (prestamo.isActivo()) {
                prestamosActivos.add(prestamo);
            }
        }
        return prestamosActivos;
    }

    public Prestamo getBuscarPrestamoPorId(int id) {
        for (Prestamo prestamo : prestamos) {
            if (prestamo.getId() == id) {
                return prestamo;
            }
        }
        return null;
    }

    public Prestamo crearPrestamo(int libroId, String prestatario, String prestatarioId, int diasPrestamo) {
        Libro libro = getBuscarLibroPorId(libroId);
        if (libro == null || !libro.isDisponible()) {
            System.err.println("Error: Libro no disponible o no encontrado. ID: " + libroId); // Debug
            return null;
        }

        Date fechaPrestamo = new Date();
        Date fechaLimite = new Date(fechaPrestamo.getTime() + (diasPrestamo * 24 * 60 * 60 * 1000L)); // Corrección: cálculo correcto de milisegundos

        Prestamo prestamo = new Prestamo(aumentoPrestamoId++, libro, prestatario, prestatarioId, fechaPrestamo, fechaLimite);
        prestamos.add(prestamo);
        return prestamo;
    }

    public boolean devolverLibro(int prestamoId) {
        Prestamo prestamo = getBuscarPrestamoPorId(prestamoId);
        if (prestamo == null || !prestamo.isActivo()) {
            return false;
        }

        prestamo.devolverLibro(new Date());
        return true;
    }

    public int getAuementoLibroId() {
        return aumentoLibroId++;
    }

}
