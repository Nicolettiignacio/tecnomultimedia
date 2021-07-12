class base {
  
  PImage torre;
  int ancho, alto, posX, posY; 



  base(int ancho_, int alto_, int posX_, int posY_ ) {

    ancho=ancho_;
    alto=alto_;
    posX=posX_;
    posY=posY_;
  }
  void dibujarBase() {

    torre = loadImage("torre0.png");
    FBox base = new FBox(ancho, alto);
    base.setPosition(posX, posY);
    base.setStatic(true);
    base.setGrabbable(false);
    base.attachImage(torre);
    mundo.add(base);
  }

}
