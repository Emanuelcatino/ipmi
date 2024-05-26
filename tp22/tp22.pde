PImage imageN, imagen2, imagen3;
float posX, posY, posY2;
int estado;
int counter;

void setup() {
  size(640, 480);
  imageN = loadImage("1.jpg");
  imagen2 = loadImage("2.jpg");
  imagen3 = loadImage("3.jpg");
  estado = 1;
  counter = 0;
  posX = 10;
  posY = 320;
  posY2 = 0;
}

void draw() {
  println("estado=" + estado);
 
  if (estado == 1) {
//Pantalla1
    image(imageN, 0, 0, width, height);
    fill(255);
    textSize(18);
    text("Counter-Strike es un popular videojuego de disparos en primera persona (FPS)", width/10 - 10, posY2);
      posY2 += 1;
    if (posY2 >= height) {
//Estado cambia
      estado = 2;
      counter = 0;
      posX = 20;
      posY = 420;
      posY2 = 0;
    }
  } else if (estado == 2) {
//Pantalla 2
    image(imagen2, 0, 0, width, height);
    fill(255);
    textSize(30);
    text("click del mouse > DISPARA", posX, posY, 600, 200);
     
    posX += 1;
    if (posX >= 640) {
//Estado cambia
      estado = 3;
      counter = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 3) {
//Pantalla 3
    image(imagen3, 0, 0, width, height);
    fill(255);
    textSize(30);
    text("El objetivo es eliminar a todos los miembros del equipo contrario.", posX/20, posY-190, 400, 200);
    textSize(15);{
    text("click en cualquier parte de la pantalla para reiniciar", posX, posY-100, 700, 200);}
  } 
}
void mousePressed() {
  estado++;
  counter = 0;
  posX = 20;
  if (estado > 3) {
    estado = 1; 
  }
}
