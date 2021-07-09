class base {
  
  PImage imagen;
  int ancho, alto, posX, posY; 



  base(int ancho_, int alto_, int posX_, int posY_ ) {

    ancho=ancho_;
    alto=alto_;
    posX=posX_;
    posY=posY_;
  }
  void dibujarBase() {


    FBox base = new FBox(ancho, alto);
    base.setPosition(posX, posY);
    base.setStatic(true);
    base.setGrabbable(false);

    mundo.add(base);
  }

  void ponerImagen() {
    imagen = loadImage("torre.png");
    image(imagen, -100, 450,360,360);
  }
}
