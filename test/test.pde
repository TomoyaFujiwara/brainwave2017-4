Ground ground = new Ground();
Player player = new Player(10, 10, 0, 0); 
Message message = new Message();
PImage img;
PImage background_img;
float current_time;
float pressed_time = 0;
int frame = 0;

void setup() {
  frameRate(20);
  size(1200, 800);
  img = loadImage("Running-mario.gif");
  background_img = loadImage("/Users/takumi/Desktop/brain/brainwave2017-4/mario-background-min.png");
  background_img.resize(1200, 800);
  player.set_img(img);
}

void draw() {
  current_time = millis();
  change_state();
  display();
  frame++;
}

void change_state(){
  if (keyPressed) {
    if (keyCode == RIGHT) {
      frame = 0;
      player.state = true;
      pressed_time = millis();
      message.state = true;
    }
  } 
}

void display(){
  clear();
  ground.display(background_img);
  player.move();
  player.display(frame);
  message.display(current_time - pressed_time, player);
}