
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration

PImage flip(PImage img) {
  Timer.start();
  
  // get image dimensions
  int w = img.width;
  int h = img.height;
  
  // create a target image
  PImage target = createImage(w, h, RGB);
  
  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      target.set(x, y, img.get(w-x,y));
      
    }
  }
  
  Timer.stop("flip pixels easy");

  return target;
}

PImage flop(PImage img) {
  Timer.start();
  
  // get image dimensions
  int w = img.width;
  int h = img.height;
  
  // create a target image
  PImage target = createImage(w, h, RGB);
  
  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      target.set(x, y, img.get(x,h-y));
      
    }
  }
  
  Timer.stop("flip pixels easy");

  return target;
}






