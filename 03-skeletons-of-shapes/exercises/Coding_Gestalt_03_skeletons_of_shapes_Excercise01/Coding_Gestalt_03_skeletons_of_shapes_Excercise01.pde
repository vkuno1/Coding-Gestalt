PImage img;  
void setup() {
  size(400 , 400);
 
  img = loadImage("silhouette_fairy.png");    
}

void draw() {
  
  image(img, 0, 0);
  
}
