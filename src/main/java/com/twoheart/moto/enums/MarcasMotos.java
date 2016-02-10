package com.twoheart.moto.enums;

/**
 * Created by Usuario on 10/02/2016.
 */
public enum  MarcasMotos {

    AKT(0,"Akt"),
    APRILIA(1,"Aprilia"),
    AYCO(2,"Ayco"),
    BAJAJ(3,"Bajaj"),
    BENELLI(4,"Benelli"),
    BMW(5,"Bmw"),
    DUCATI(6,"Ducati"),
    EM(7,"Energy Motion"),
    GASGAS(8,"Gas Gas"),
    HARLEYDAVIDSON(9,"Harley Davidson"),
    HERO(10,"Hero Motorcorp"),
    HUSQVARNA(11,"Husqvarna"),
    HONDA(12,"Honda"),
    JINCHENG(13,"Jincheng"),
    KAWASAKI(14,"Kawasaki"),
    KEEWAY(15,"Keeway"),
    KTM(16,"Ktm"),
    KYMCO(17,"Kymco"),
    LML(18,"Lohia Machinery Limited"),
    MVAGUSTA(19,"Mv Agusta"),
    PIAGGIO(20,"Piaggio"),
    POLARIS(21,"Polaris"),
    SACHS(22,"Sach Bikes"),
    SIGMA(23,"Sigma"),
    SUZUKI(24,"Suzuki"),
    SYM(25,"SYM"),
    TRIUMPH(26,"Triumph"),
    TVS(27,"Tvs"),
    UM(28,"United Motors"),
    YAMAHA(29,"Yamaha"),
    OTRAS(30,"Otras");

    private int id;
    private String name;

    MarcasMotos(int id, String name){
        this.id = id;
        this.name = name;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getName() {return name;}
    public void setName(String name) {this.name = name;}

    @Override
    public String toString() {
        return "MarcasMotos{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
