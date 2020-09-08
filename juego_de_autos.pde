//Pestaña Principal

int cantCaminos = 3;
int cantAutos = 4;
int tamX, tamY, posX;

int [][] autosEnemigos = new int [cantCaminos][cantAutos];
int vidas=5;
int estado=0;
int metros=0;
void setup() {
  size(300, 600);

  tamX = width / cantCaminos;
  tamY = height / 4;

  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
}

void draw() {
  background(200);
  if (estado==0) {
    dibujarAutosEnemigos();
    dibujarAutoPersonaje();
    restriccion();

    reset();
    contador ();
  }
  if (estado==1) {
    volverEmpezar();
  }
}

void keyPressed() {
  moverAutoPersonaje();
}

//Pestaña Personaje
void inicializarAutoPersonaje() {
  posX = 0;
}

void dibujarAutoPersonaje() {
  fill(255, 0, 0);
  rect(posX, height - tamY, tamX, tamY);
}

void moverAutoPersonaje() {
  if (keyCode == LEFT) {
    posX = posX - tamX;
  } else if (keyCode == RIGHT) {
    posX = posX + tamX;
  }
}

//Pestaña Enemigos
void inicializarAutosEnemigos() {
  for (int cc = 0; cc < cantCaminos; cc++) {
    for (int ca = 0; ca < cantAutos; ca++) {
      autosEnemigos[cc][ca] = round(random(-2000 * (ca + 1), -2000 * ca));
    }
  }
}

void dibujarAutosEnemigos() {
  for (int cc = 0; cc < cantCaminos; cc++) {
    for (int ca = 0; ca < cantAutos; ca++) {
      autosEnemigos[cc][ca]+=2;
      fill(150);
      rect(cc * tamX, autosEnemigos[cc][ca], tamX, tamY);


      if (dist(cc*tamX, autosEnemigos[cc][ca], posX, height-tamY)<=tamX) {
        vidas=vidas-1;
        autosEnemigos[cc][ca] = round(random(-2000 * (ca + 1), -2000 * ca));
      }
    }
  }
}
void restriccion() {
  posX=constrain(posX, 0, tamX*2);
}

void reset() {
  if (vidas==-1) {
    estado=1;
  }
}
void volverEmpezar() {
  fill(255, 0, 0);
  rect((width/2)-75, height/2, 150, 50);
  fill(0);  
  textSize(25);
  text("perdiste", (width/2)-50, (height/2)+25);
  text(metros, (width/2)-40, (height/2)+50);
  text("Mts", (width/2)+25, (height/2)+50);

  if (keyPressed ) {
    background(200);
    estado=0;
    vidas=5;
    metros=0;
  }
}

void contador() {
  textSize(15);  
  text("metros :", (width*0)+10, (height*0)+20);
  text(metros, (width*0)+75, (height*0)+20);
  metros=metros+1;
  text("vidas:", (width-75), (height*0)+20);
  text(vidas, (width-25), (height*0)+20);
}
