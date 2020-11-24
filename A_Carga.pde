class Carga {
  PImage [] imagenes = new PImage [14];

  Carga() {
    for (int i = 0; i < 13; i++) {
      imagenes[i] = loadImage("pantalla" + i + ".jpg"); //cargo las imagenes
    }
  }
}
