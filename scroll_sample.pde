float x = 10, y = 350;

void setup(){
  size(600, 400);
}

void draw(){
  background(0);
  
  rect(0, 360, width, 10);
  
  rect(int(x), int(y), 10, 10);

  if (keyPressed && key == CODED) {
    if (keyCode == LEFT) {
      x += -2;
    } else if (keyCode == RIGHT) {
      x += 2;
    }
  }
  
  //not to screen out
  if(x > width - 11) {
    x = width - 11;
  } else if (x < 0) {
    x = 0;
  }
}