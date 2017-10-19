//PFont font = createFont("HiraKakuPro-W3", 80);
PFont font;

class Message{
  String print_message = "this is message.";
  Boolean state = false; 
  
  void display(float time, Player player){
    if (player.state && state){
      int x = 10; 
      int i = (int) (time / 300);
      if (i < print_message.length()){
        fill(255, 255, 255);
        font = createFont("Arial",20,true);
        textFont(font);
        textSize(80);
        text(print_message.substring(0, i),x,height/2);
      }
      else{
        this.state = false;
        player.state = false;
      } 
    }
  }
}