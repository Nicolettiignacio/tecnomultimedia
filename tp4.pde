PFont narracion;
PImage [] imagenes = new PImage [13];
String [] textos = new String [16];
int pantalla=0;
int Y=height+550;
void setup() {
  size(800, 600);   
  surface.setResizable(true);
  background(255);

  iniciarFuente();
  inicializarImagenes(13);
  iniciarTexto();
}

void draw() {
  historia ((width/2)-400, (height/2)-300, color(0), 20); 


  println(pantalla);
}
