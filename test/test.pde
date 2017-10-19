Ground ground = new Ground();
Player player = new Player(10, 660, 0, 0); 
Enemy enemy = new Enemy(900, 580, 0, 0); 
Message message = new Message();
Result result = new Result();
Clear clear = new Clear();
PImage run_img, dead_img, stand_img, sit_img, background_img, result_img, clear_img;
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
  stand_img = loadImage("luigi-stand.png");
  sit_img = loadImage("luigi-sit.png");
  result_img = loadImage("/Users/takumi/Desktop/brain/brainwave2017-4/test/result.png");
  clear_img = loadImage("/Users/takumi/Desktop/brain/brainwave2017-4/test/clear.png");
  player.set_img(run_img, dead_img);
  enemy.set_img(stand_img, sit_img);
  result.set_img(result_img);
  clear.set_img(clear_img);
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
      enemy.state = 0;
      pressed_time = millis();
      message.state = true;
    }
    else if (keyCode == LEFT) {
      player.state = 2;
      result.state = 1;
    }
  } 
  
}

void display(){
  clear();
  ground.display(background_img);
  player.move();
  player.display(frame);
  enemy.display();
  result.display(player, enemy);
  clear.display(player);
  message.display(current_time - pressed_time, player, enemy);
}