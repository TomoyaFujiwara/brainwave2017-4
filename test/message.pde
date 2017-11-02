import java.util.Random;
//PFont font = createFont("HiraKakuPro-W3", 80);
PFont font;

class Message{
  String print_message = "だるまさんがころんだ ";
  Boolean state = true; 
  Boolean stop = false;
  float pressed_time;
  float stop_time;
  int ran = 300;
  
  Boolean death(float[][] buffer){
    float sum = 0;
    for (int j=0; j<50; j++){
      float max = 0;
      for (int i = 0; i<4; i++){
        if(buffer[i][j] > max) {
          max = buffer[i][j];
        }
      }
      sum += max;
    }
    println(sum);
    if (sum > 15){
      return false;
    }
    else{
      return true;
    }
  }
  
  void display(float time, Player player, Enemy enemy, Result result, float[][] buffer){
    if (player.state==1 && this.state){
      int i = (int) ((time - this.pressed_time) / ran);
      if (i < print_message.length()){
        fill(255, 255, 255);
        font = createFont("Arial",20,true);
        textFont(font);
        textSize(80);
        text(print_message.substring(0, i),200,300);
      }
      else{
        this.state = false;
        player.state = 0;
        enemy.state = 1;
        Random rnd = new Random();
        this.ran = (rnd.nextInt(5) + 1)*100;
        this.stop_time = millis();
        this.stop = true;
      }
    }
    else if (millis() - this.stop_time > 5000 && this.stop){
      this.stop = false;
      if (death(buffer) == true){
        player.state = 2;
        result.state = 1;
      }
      else{
        player.state = 1;
        enemy.state = 0;
        this.pressed_time = millis();
        this.state = true;
        frame  = 0;
      }
    }
  }
  
  void restart(){
    state = false;
    stop = false;
  }

}