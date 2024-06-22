// Alumno Emanuel Catino, Legajo 93071/6
// LINK VIDEO YT : https://youtu.be/PBJNsobNH60
// no agregue imagen por que no tuve referencia

int squareSize = 40; 
int spacing = 5; 
boolean invertColors = false; 
void setup() {
  size(800, 400);
  noCursor(); 
}

void draw() {
  if (invertColors) {
    background(255); 
    fill(0); 
  } else {
    background(0); 
    fill(255); 
  }

  int numX = width / (squareSize + spacing);
  int numY = height / (squareSize + spacing);
  /////////////////////////FOR//////////////////////////
  for (int i = 0; i < numX; i++) {
    for (int j = 0; j < numY; j++) {
      float x = i * (squareSize + spacing);
      float y = j * (squareSize + spacing);

      // Calcula la distancia entre los cuadrados (DIST)
      float distance = dist(mouseX, mouseY, x + squareSize / 2, y + squareSize / 2);


      float newSize = map(distance, 2, width, squareSize, 2);


      drawSquare(x, y, newSize);
    }
  }
}

void drawSquare(float x, float y, float size) {

  rectMode(CORNER);
  rect(x, y, size, size);
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    invertColors = !invertColors;
    resetProgram(); // función para reiniciar el programa
  }
}

// no retorna un valor ni tiene parametros
void resetProgram() {
  // Reinicia variables a estado original
  squareSize = 20;
  spacing = 10;
}

// retorna un valor y si tiene parámetros
int calculateNumShapes(int size, int spacing) {
  int num = (width / (50 + 50)) * (height / (50 + 5));
  return num;
}
