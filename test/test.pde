Ground ground = new Ground();
Player player = new Player(10, 10, 0, 0); 
Message message = new Message();
PImage run_img, dead_img, background_img;
float current_time;
float pressed_time = 0;
int frame = 0;

void setup() {
  frameRate(20);
  background(0);
  size(1200, 800);
  background_img = loadImage("mario-background-min.png");
  background_img.resize(1200, 800);
  run_img = loadImage("Running-mario.gif");
  dead_img = loadImage("Dead-mario.gif");
  player.set_img(run_img, dead_img);
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
      player.state = 1;
      pressed_time = millis();
      message.state = true;
    }
    else if (keyCode == LEFT) {
      player.state = 2;
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