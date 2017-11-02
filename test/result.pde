class Result {
  
  PImage result_img;
  int state;
  
  void set_img(PImage img){
    this.result_img = img;
    this.state = 0;
  }
  
  void display(Player player, Enemy enemy){
    if (state == 1) {
      String score = str(int(player.x * 100 / 870)) + " / " + str(100);
      image(result_img, 350, 150, 500, 300);
      fill(0);
      text(score, 430, 390);
    }
  }
  
  void restart(){
    state = 0;
  }
}