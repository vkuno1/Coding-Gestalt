PImage img;  
void setup() {
  size(400 , 400);
 
  img = loadImage("outline_bug.png");    
}

void draw() {
  
  image(img, 0, 0);
  
}
