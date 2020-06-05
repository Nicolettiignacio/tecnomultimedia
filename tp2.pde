int X=225;
int Y=500;
int Y2=800;
int Y3=850;
int Y4=1200;
int Y5=1700;
int dir=-1;

PImage img;
PFont fuente;

void setup(){ size(700,350);
img=loadImage("fondoX.png");
fuente=loadFont("Aria-20.vlw");
textFont(fuente);
}

void draw(){
background(0);
image(img, 0,0);
Y=Y+dir;
Y2=Y2+dir;
Y3=Y3+dir;
Y4=Y4+dir;
Y5=Y5+dir;




textSize(25);
fill(255);
text("Entre la vida y la muerte",X,Y);



textSize(20);
text("Intérpretes",225,Y2);

textSize(20);
text("Angel || JESUS BLANCO\nElena || IRENE GUEREDIAGA\nAngela || ANA ACEÑA\nAlfonso || ANGELEO OLIVER\nJuan Carlos || CARLOS ALVAREZ\nDependiente 1 || BEATRIZ TEJEDA\nDependiente 2 || JEAN PIERRE GAUCHI\nMadre de Angel || RUTH ARGENTE \nDelicuente || NABIL SANTOS",225,Y3);

text("Direccion || DAVID CANOVAS\nAyudante de direccion || OSCAR SANCHEZ\n                                           ||  JEAN dominguez \nScript || IRENE MERINERO\n            ||  ANA AGUILAR\nAsistente de direccion || RUBEN SANCHEZ\nDirector de fotografia || ALEXANDRO VEGA\nAyudante de camara || LUIS ALAVADO\nAuxiliar de camara || YOLANDA GIMENEZ\nFoto fija || ANGEL BONACHEA\nJefe electricos || FREY ANGELOV\nElectricos || CARLOS FAJARDOS\n                    || manuel sarda\n                    || jorge cerezo\n                    || susana cadenas",X,Y4);

text("Musica || ALFREDO ALONSO\nSonido directo || IGNACIO LEON\nDireccion artistica || YOLANDA PEREZ\nMaquillaje || CARLOS PARLA\nDiseño grafico || LUCAS GOMEZ\nIluminacion || SADILSA\n                      || cev\nCamaras || IEC",X,Y5);


fill(120);
ellipse(200,mouseY,25,25);
}
void mouseClicked(){
  Y=500;
  Y2=800;
  Y3=850;
  Y4=1200;
  Y5=1700;
}
