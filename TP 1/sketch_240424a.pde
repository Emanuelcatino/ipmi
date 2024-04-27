PImage img;           // Emanuel catino 
                       // Comision 2 
void setup()
{
  size(800, 400); 
  img = loadImage("paisaje.jpeg");
}

void draw() 
{
  background(0, 191, 255);
  fill(255, 255, 0); 
  ellipse(900, 290, 500, 200);
fill(0, 128, 0); 
stroke(0, 128, 0); 
ellipse(700, 450, width, height);
fill(139, 69, 19); 
stroke(139, 69, 19);
rect(650, 220, 20, 40); 
fill(0, 128, 0); 
stroke(0, 128, 0); 
ellipse(660, 190, 90, 90);
fill(255); 
stroke(255); 
ellipse(560, 80, 90, 40);
fill(255); 
stroke(255); 
ellipse(560, 65, 80, 40);
fill(255); 
stroke(255); 
ellipse(530, 70, 90, 40);

  image(img, 0 , 0, 400, 400);
}
