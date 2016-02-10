package com.twoheart.moto.enums;

/**
 * Created by Usuario on 10/02/2016.
 */
public enum  EstilosMoto {

    DEPORTIVAS("Deportiva",1),
    NAKED("Naked",2),
    STREET("Calle",3),
    TURISMO("Turismo",4),
    CHOPPER("Chopper",5),
    CUSTOMCAFERACER("Cafe Racer o Modificadas",6),
    SCOOTER("Scooter",7),
    CROSSENDURO("Cross y Enduro",8);

    private String name;
    private int id;

    EstilosMoto(String name, int id){
        this.name = name;
        this.id = id;
    }

    public String getName() {return name;}
    public void setName(String name) {this.name = name;}
    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    @Override
    public String toString() {
        return "EstilosMoto{" +
                "name='" + name + '\'' +
                ", id=" + id +
                '}';
    }
}
