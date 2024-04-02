package com.emergentes.modelo;

public class Persona {
    private int id;
    private String Nombre;
    private int Primer;
    private int Segundo;
    private int Tercero;
    private int Nota;

    public Persona() {
        this.id=0;
        this.Nombre="";
        this.Primer=0;
        this.Segundo=0;
        this.Tercero=0;
        this.Nota=0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getPrimer() {
        return Primer;
    }

    public void setPrimer(int Primer) {
        this.Primer = Primer;
    }

    public int getSegundo() {
        return Segundo;
    }

    public void setSegundo(int Segundo) {
        this.Segundo = Segundo;
    }

    public int getTercero() {
        return Tercero;
    }

    public void setTercero(int Tercero) {
        this.Tercero = Tercero;
    }

    public int getNota() {
        return Nota=Primer+Segundo+Tercero;
    }

    public void setNota(int Nota) {
        this.Nota = Nota;
    }
    
    
}
