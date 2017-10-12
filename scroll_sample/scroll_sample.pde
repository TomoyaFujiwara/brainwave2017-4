float x = 10;
PImage dot; 
PFont font;
String text = "だるまさんがころんだ";
int f = 80;
int i;
int k;
int s = 30; //text interval

void setup() {
  size(1200, 800);
  k = text.length();
  dot = loadImage("https://raw.githubusercontent.com/TomoyaFujiwara/brainwave2017-4/master/mario-stand.gif");
}

void draw() {
  background(0);

  fill(88, 191, 63); 
  rect(0, 700, width, 100);

  font = createFont("HiraKakuPro-W3", 80);
  textFont(font);
  textSize(f);
  i++;
  text(text.substring(0, min(i/s, k)), 200, 200, f * 11, 100);
  
  if (min(i/s, k) == 10) {  
    i = 0;
  }
    

  if (keyPressed && key == CODED) {
    if (keyCode == LEFT) {
      x += -4;
    } else if (keyCode == RIGHT) {
      x += 4;
    }
  }

  image(dot, x, 620, 60, 80); 

  //not to screen out
  if (x > width - 11) {
    x = width - 11;
  } else if (x < 0) {
    x = 0;
  }
}