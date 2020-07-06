PFont font;
PImage imagen1, imagen2,imagen3,imagen4,imagen5,imagen6,imagen7,imagen8,imagen9,imagen10,imagen11,creditos;
int pantalla=0;
int y=605;
void setup(){
size(800,600); 
background(255); 
font=loadFont("CambriaMath-20.vlw"); 
}

void draw(){
println("p1",pantalla);
background(7,150,241);

fill(255,255,0);
rect(750,550,30,20);//boton de comenzar//

fill(255,0,0);
rect(50,500,100,50);//boton de creditos rojo//

if(pantalla==0){
fill(0);
textFont(font,20);
text("creditos",55,525);
text("comenzar",710,535);

textSize(50);
fill(0,255,0);
strokeWeight(5);
text("Los",200,200);
text("3",375,150);
text("cerditos",500,200);
}

//pantalla 1//
if(pantalla==1){
imagen1=loadImage("pantalla1.jpg");
image(imagen1,0,0);
fill(255,255,0);
rect(750,500,30,20);
fill(0,0,0);
textFont(font,20);
text("Una vez hubo tres hermanos de cerditos, Tom, Billy y Henry, que dejaron a su familia \npara ver el mundo exterior. Inicialmente estaban muy felices, hacían lo que deseaban, \njugaban todo el día, comían lo que quisieran, incluso hacían muchos amigos\n en muchos lugares, pero cuando se acercaba el invierno,\n comenzaron a pensar en la comida, suministros y la casa real.",30,50);
}

//pantalla2//
if(pantalla==2){
background(255); 
imagen2=loadImage("pantalla2.jpg");
image(imagen2,0,0);
fill(255,255,0);
rect(750,550,30,20);
rect(700,550,30,20);
fill(0,0,0);
textFont(font,20);
text("Mientras los cerditos iban camino hacia\nel pueblo el lobo muy audaz,\nlos observaba detrás de los árboles,\nal llegar al pueblo debían contruir \nsu casa, pero el cerdito mas chico \nno sabia de que material contruir \nsu casa.",448,100);
fill(255,0,0);
text("Opcion A: Pedir ayuda al cerdito mayor.",450,450);
text("Opcion B: Contruir la casa del material \n               que consiga por el pueblo.",450,470);
text("A",710,565);
text("B",760,565);
}

//pantalla3//
if(pantalla==3){
background(255);
imagen3=loadImage("pantalla3.jpg");
image(imagen3,0,0);
fill(255,255,0);
rect(700,500,30,20);
fill(0);
textFont(font,20);
text("El cerdito mayor, le aconseja contruir una \ncasa de materiales fuertes, resistentes al \nviento. EL lobo al intentar soplar su casa \ny no hacer efecto se da por vencido y va \nhacia la casa del segundo cerdito con la casa \nde madera.",400,100);
}

//pantalla 4//
if(pantalla==4){
  background(255);
  imagen4=loadImage("pantalla4.jpg");
image(imagen4,0,0);
fill(255,255,0);
rect(750,500,30,20);

fill(255,0,0);
textFont(font,20);
text("El cerdito Tom construyó \nuna casa de paja que era la \nmás fácil, y el cerdo de Billy \nplaneó construir una casa de \nmadera, a diferencia de Tom y Billy, \nHenry el más inteligente \nconstruyó una casa sólida \nhecha de ladrillos, \npara que pudiera protegerse \ndel lobo.",525,100);
}

//pantalla5//
if(pantalla==5){
  background(255);
  imagen5=loadImage("pantalla5.jpg");
image(imagen5,0,0);
fill(255,255,0);
rect(750,550,30,20);

fill(0,0,0);
textFont(font,20);
text("Luego de haber contruido sus casas decidieron recorrer el pueblo. Una tarde, \nde repente, oyeron el sonido del lobo, se quedaron atrapados por el miedo y \nvolvieron a sus propias casas. El lobo llegó al faro de Tom, que estaba hecho de paja.",30,50);
}

//pantalla6//
if(pantalla==6){ background(255);
  imagen6=loadImage("pantalla6.jpg");
image(imagen6,0,0);
fill(255,255,0);
rect(700,550,30,20);
fill(0);
textFont(font,20);
text("El lobo muy furioso, infla sus pulmones y comienza a soplar sobre la casa de madera \nhasta el punto de derribarla. El cerdito mas chico con mucho miedo y junto al cerdito \ndel medio huyen a la casa de su hermano mayor para estar los tres juntos.",40,50);
}

//pantalla7//
if(pantalla==7){ background(255);
  imagen7=loadImage("pantalla7.jpg");
image(imagen7,0,0);
fill(255,255,0);
rect(750,500,30,20);
fill(255,0,0);
textFont(font,20);
text(" Cerdito, cerdito , dijo. \n¿No me dejas entrar? dijo el lobo. \n¡No! dijo Tom Pig. \nNo por el cabello de mi barbilla. \n¡No te dejaré entrar!\n¡Entonces resoplaré y resoplaré y \nvolaré tu casa! dijo el lobo y \nlo rompió fácilmente con un solo soplo.",450,50);
}

//pantalla8//
if(pantalla==8){ background(255);
  imagen8=loadImage("pantalla8.jpg");
image(imagen8,0,0);
fill(255,255,0);
rect(700,500,30,20);
rect(700,450,30,20);
fill(0,0,0);
text("El cerdito Tom corre hacia la casa del cerdo Billy, \nque es una casa de madera. \nCerdito, cerdito. ¿No me dejas entrar? dijo el lobo.\n¡No! dijo Bily Pig. “No por el cabello de mi barbilla. \n¡No te dejaré entrar!¡Entonces resoplaré y resoplaré y \nvolaré tu casa! dijo el lobo y lo hizo.\nDesafortunadamente, el segundo experimentó \nel mismo destino que el primero, \ny corrieron a la casa de Henry.",300,40);
text("Pero el lobo intento lo mismo con la \nultima casa,pero esta al ser de ladrillo \nno hizo efecto al soplido del lobo, \nentonces el lobo intentaba entrar a la casa.",350,470);
fill(255,0,0);
textFont(font,20);
text("Opcion A: Por la ventana.  \nOpcion B: Por la chimenea.",350,570);
text("A",710,465);
text("B",710,515);
}

//pantalla9
if(pantalla==9){ background(255);
  imagen9=loadImage("pantalla9.jpg");
image(imagen9,0,0);
fill(255,255,0);
rect(750,550,30,20);
fill(255,0,0);
textFont(font,20);
text("Luego de pensar mucho, el lobo, decide entrar por la \nchimenea, pero lo que no sabia es que abajo \nlo esperaba una olla de agua caliente que habian \nencendido los cerditos...",325,100);
}

//pantalla10//
if(pantalla==10){ background(255);
imagen10=loadImage("pantalla10.jpg");
image(imagen10,0,0);
fill(255,255,0);
rect(750,500,30,20);
fill(0,0,0);
textFont(font,20);
text("Luego de pensar mucho, el lobo, \ndecide entrar por la ventana, \npero lo cerditos lo ahuyentan rapidamente, \nEntonces el lobo busca otra alternativa.",365,450);
}

//pantalla11//
if(pantalla==11){ background(255);
  imagen11=loadImage("pantalla11.jpg");
image(imagen11,0,0);
fill(255,255,0);
rect(600,500,100,50);
fill(255,0,0);
textFont(font,20);
text("Creditos",615,530);
text("El lobo al caer en la olla salió corriendo \nfuera del bosque y nunca mas se supo \nde él. Asi los cerditos festejaron juntos \nque habían vencido.",450,100); 
}

//creditos//
if(pantalla==12){ background(255);
  creditos=loadImage("creditos.jpg");
image(creditos,118,0);
fill(255,255,0);
rect(750,500,30,20);
textFont(font,20);
fill(0);
text("Personajes: Cerdito tom.\n                 Cerdito Billy.\n                 Cerdito Henry.\n                 Lobo.\nCreador      Nicoletti Ignacio. ",300,y);
y=y-1;if(y==-100){y=605;}
text("volver",740,475);
}


}//cierre del void draw//



void mousePressed(){

if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=550)&&(mouseY<=570)){if(pantalla==0){pantalla=1;}}  //P1//                                                              
if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==1){pantalla=2;}} //P2//


if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=550)&&(mouseY<=570)){if(pantalla==2){pantalla=4;}}      //P4//     //A//  
if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==4){pantalla=5;}}     //P5//     //A//
if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=550)&&(mouseY<=570)){if(pantalla==5){pantalla=7;}}    //P7//     //A//
if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==7){pantalla=8;}}   //P8//     //A//
if((mouseX>=700)&&(mouseX<=730)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==8){pantalla=9;}}  //P9//     //A//



if((mouseX>=700)&&(mouseX<=730)&&(mouseY>=550)&&(mouseY<=570)){if(pantalla==2){pantalla=3;}}                     //P3//    //B//
if((mouseX>=700)&&(mouseX<=730)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==3){pantalla=6;}}                    //P6//    //B//
if((mouseX>=700)&&(mouseX<=730)&&(mouseY>=550)&&(mouseY<=570)){if(pantalla==6){pantalla=8;}}                   //P8//    //B//
if((mouseX>=700)&&(mouseX<=730)&&(mouseY>=450)&&(mouseY<=470)){if(pantalla==8){pantalla=10;}}                 //P10//   //B//
if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==10){pantalla=9;}}                //p10//   //A//
if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=550)&&(mouseY<=570)){if(pantalla==9){pantalla=11;}}               //P11//   //A//


if((mouseX>=600)&&(mouseX<=700)&&(mouseY>=500)&&(mouseY<=550)){if(pantalla==11){pantalla=12;}}             //Creditos//
if((mouseX>=50)&&(mouseX<=150)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==0){pantalla=12;}}              //creditos inicio//

if((mouseX>=750)&&(mouseX<=780)&&(mouseY>=500)&&(mouseY<=520)){if(pantalla==12){pantalla=0;background(255);}}     //reset//

}  //cierre del mouse//   
  

  







      
      

      
      
      
      
  


 
