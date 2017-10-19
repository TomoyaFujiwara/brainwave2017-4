class Clear {
  
  PImage clear_img;
  
  void set_img(PImage img){
    this.clear_img = img;
  }
  
  void display(Player player){
    if (player.x >= 870) {
      image(clear_img, 350, 150, 500, 300);
      player.state = 0;
    }
  }
}