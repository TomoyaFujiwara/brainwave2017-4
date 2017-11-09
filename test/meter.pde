import java.util.Random;
//PFont font = createFont("HiraKakuPro-W3", 80);
//PFont font;

class Meter {
  float x = 10;
  float y = 500;
  float size_x = 30;
  float size_y;
  float border = 175;
  Boolean state = true; 
  Boolean stop = false;
  //float pressed_time;
  //float stop_time;
  //int ran = 300;



  void display(float time,float max) {
      //println(millis()-time);
      line(x-5,y-border,x+size_x+5,y-border);
      //max = random(100,200); //             remove to move
      size_y = max * 500;
      rectMode(CORNERS);
      strokeJoin(ROUND);
      colorMode(RGB,256);
      fill(200,0,0);
      rect(x,y-size_y,x+size_x,y);
    //if (player.state==1 && this.state){
    //  int i = (int) ((time - this.pressed_time) / ran);
    //  if (i < print_message.length()){
    //    fill(255, 255, 255);
    //    font = createFont("Arial",20,true);
    //    textFont(font);
    //    textSize(80);
    //    text(print_message.substring(0, i),200,300);
    //  }
    //  else{
    //    this.state = false;
    //    player.state = 0;
    //    enemy.state = 1;
    //    Random rnd = new Random();
    //    this.ran = (rnd.nextInt(5) + 1)*100;
    //    this.stop_time = millis();
    //    this.stop = true;
    //  }
    //}
    //else if (millis() - this.stop_time > 5000 && this.stop){
    //  this.stop = false;
    //  if (death(buffer) == true){
    //    player.state = 2;
    //    result.state = 1;
    //  }
    //  else{
    //    player.state = 1;
    //    enemy.state = 0;
    //    this.pressed_time = millis();
    //    this.state = true;
    //    frame  = 0;
    //  }
    //}
  }

  void restart() {
    state = false;
    stop = false;
  }
}