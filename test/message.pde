import java.util.Random;
//PFont font = createFont("HiraKakuPro-W3", 80);
PFont font;

class Message{
  String print_message = "this is message.";
  Boolean state = false; 
  int ran = 300;
  void display(float time, Player player){
    if (player.state==1 && this.state){
      int x = 10; 
      int i = (int) (time / ran);
      if (i < print_message.length()){
        fill(255, 255, 255);
        font = createFont("Arial",20,true);
        textFont(font);
        textSize(80);
        text(print_message.substring(0, i),x,height/2);
      }
      else{
        this.state = false;
        player.state = 0;
        Random rnd = new Random();
        this.ran = (rnd.nextInt(5) + 1)*100;        
      } 
    }
  }
}