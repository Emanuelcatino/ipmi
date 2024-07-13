// Alumno Emanuel Catino, Legajo 93071/6
// LINK VIDEO YT : https://youtu.be/9R6MfBxVv9E

//Tamaño del cuadrado
int tamañoCuadrado = 40;
//Espaciado del cuadrado
int espaciado = 5;
//Booleano para invertir colores
boolean invertColors = false;
boolean colors = false;
//Variable para invocar la imagen)
PImage img;

void setup() {
  //Tamaño del lienzo
  size(800, 400);
  noCursor();
  //Cargo la imagen
  img = loadImage("F_43.png");
}

void draw() {
  if (invertColors) {
   background(255);
   fill(0);
} else {
   background(0);
   fill(255);
}

if (colors){
  background(255);
  fill(#C1721D);
}

int numX = width / (tamañoCuadrado + espaciado );
int numY = height / (tamañoCuadrado + espaciado );
/////////////////////////FOR//////////////////////////
for (int i = 0; i < numX; i++) { 
  for (int j = 0; j < numY; j++) {
    float x = i * (tamañoCuadrado + espaciado );
    float y = j * (tamañoCuadrado + espaciado );

    // Calcula la distancia entre los cuadrados (DIST)
    float distancia = dist(mouseX, mouseY, x + tamañoCuadrado, y + tamañoCuadrado);
    //
    float nuevoTamañoCuadrado = map(distancia, 2, width, tamañoCuadrado, 2);

    dibujarCuadrado(x, y, nuevoTamañoCuadrado);
    image(img,0,0,400,400);
  }
}
}
//Dibuja el cuadrado
void dibujarCuadrado(float x, float y, float size) {

  rectMode(CORNER);
  rect(x, y, size, size);
}

//Cada vez que toco cambio de color
void keyPressed() {
  if (key == 'r' || key == 'R') {

    invertColors = !invertColors;
    fill(random(255), random(255), random(255));
  }
  if (key == 'w' || key == 'W') {
    
    colors = !colors;
    fill(random(255), random(255), random(255));
    
  }
  
}
