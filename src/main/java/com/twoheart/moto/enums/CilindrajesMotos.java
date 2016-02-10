package com.twoheart.moto.enums;

/**
 * Created by Usuario on 10/02/2016.
 */
public enum  CilindrajesMotos {

    C0C50(0,"0 - 50 cc"),
    C51C125(1,"51 - 125 cc"),
    C126C250(2,"126 - 250 cc"),
    C251C500(3,"251 - 500 cc"),
    C500CMAS(4,"501 - Más cc");

    private int id;
    private String name;

    CilindrajesMotos(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getName() {return name;}
    public void setName(String name) {this.name = name;}

    @Override
    public String toString() {
        return "CilindrajesMotos{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
