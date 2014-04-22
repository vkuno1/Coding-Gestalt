
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration


PImage grayscale(PImage img) {
  Filter.begin(img);
  for(int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]));
  }
  return Filter.end();
}

PImage threshold(PImage img, int threshold) {
  Filter.begin(img);
  for(int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]) > threshold ? 255 : 0);
  }
  return Filter.end();
}

PImage dilate(PImage img, int steps) {
  Filter.begin(img);

  int x = 0, y = 0;
  int maxI;

  for (int i = 0; i < Filter.source.length; i++) {
    x = i % w;
    y = i / w;
    maxI=Filter.source[i];
    if ( x < img.width-steps && y<img.height-steps){
      for (int isy=0; isy < steps; isy++){
        for (int isx=0; isx < steps; isx++){
          maxI = max(Filter.source[(y+isy)*img.width+x+isx],maxI);
          
        }
      }
//      println("maxI=%i",maxI);
//      for (int isy=0; isy < steps; isy++){
//        for (int isx=0; isx < steps; isx++){
//          Filter.target[(y+isy)*img.width+x+isx] = color(brightness(maxI) > threshold ? 255 : 0);
//        }
//      }
    }
   Filter.target[i] = color(brightness(maxI) > threshold ? 255 : 0);
    
  }
  
  return Filter.end(); 
}

PImage erode(PImage img, int steps) {
  return img;
}









