

class personaje {

  PImage salto, normal, cubierto;
  int W, H, posX, posY, estado, cant;


  personaje( int W_, int H_ ) {

    W=W_;
    H=H_;
    posX=160;
    posY=350;
    estado=0;
  }

  void dibujarPersonaje(FWorld mundo) {

    FBox personaje = new FBox(W, H);
    personaje.setPosition(posX, posY);
    personaje.setName("personaje");
    normal =loadImage("normal.png");
    personaje.attachImage(normal);
    println(estado);
    mundo.add(personaje);
  }




  void eliminarNormal() {
    ArrayList <FBody> cuerpos = mundo.getBodies();
    for ( FBody este : cuerpos ) {
      String nombre = este.getName();
      if ( nombre != null ) {
        if ( nombre.equals("personaje") ) {
          mundo.remove( este );
        }
      }
    }
  }

  void eliminarSalto() {
    ArrayList <FBody> cuerpos = mundo.getBodies();
    for ( FBody este : cuerpos ) {
      String nombre = este.getName();
      if ( nombre != null ) {
        if ( nombre.equals("personaje")&& nombre.equals("personaje2") ) {
          mundo.remove( este );
        }
      }
    }
  }

  void eliminarCubrir() {
    ArrayList <FBody> cuerpos = mundo.getBodies();
    for ( FBody este : cuerpos ) {
      String nombre = este.getName();
      if ( nombre != null ) {
        if ( nombre.equals("personaje") ) {
          mundo.remove( este );
        }
      }
    }
  }

  
  
  void acciones() {

    if ( key==' ' ) {
      a.disparar( mundo );
    }

    if ( key=='w') {
      FBox personaje2 = new FBox(W, H);
      salto =loadImage("salto.png");
      personaje2.setPosition(posX, posY);
      personaje2.attachImage(salto);
      eliminarNormal();
      personaje2.setName("salto2");
      mundo.add(personaje2);
    }
    
    if ( key=='s') {
      FBox personaje3 = new FBox(W, H);
      cubierto =loadImage("cubrirse.png");
      personaje3.setPosition(posX, posY);
      personaje3.attachImage(cubierto);
      personaje3.setStatic(true);   
      personaje3.setName("cubierto");
      mundo.add(personaje3);
      eliminarNormal();
    }
  }
}
