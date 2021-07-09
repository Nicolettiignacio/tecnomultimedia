class personaje {


  int W, H, posX, posY;


  personaje( int W_, int H_, int posX_, int posY_  ) {

    W=W_;
    H=H_;
    posX=posX_;
    posY=posY_;
  }

  void dibujarPersonaje(FWorld mundo) {

    FBox personaje = new FBox(W, H);
    personaje.setPosition(posX, posY);
    personaje.setName("personaje");
    mundo.add(personaje);
  }

  void PersonajeEnElAire() {
  }

  void PersonajeCubierto() {
  }
}
