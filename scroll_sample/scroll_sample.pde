float x = 10, y = 350;
PImage dot; 

void setup(){
  size(600, 400);
  dot = loadImage("https://raw.githubusercontent.com/TomoyaFujiwara/brainwave2017-4/master/mario-stand.gif"); 
}

void draw(){
  background(0);
  
  rect(0, 360, width, 10);

  if (keyPressed && key == CODED) {
    if (keyCode == LEFT) {
      x += -4;
    } else if (keyCode == RIGHT) {
      x += 4;
    }
  }
  
  image(dot, x, 280, 60, 80); 
  
  //not to screen out
  if(x > width - 11) {
    x = width - 11;
  } else if (x < 0) {
    x = 0;
  }
}