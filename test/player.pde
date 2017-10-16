class Player{
  float x, y;
  float shape_x, shape_y;
  boolean state;
  PImage img;
  PImage[] imgs;

  Player(float x, float y, float shape_x, float shape_y) {
    this.x = x;
    this.y = y;
    this.shape_x = shape_x;
    this.shape_y = shape_y;
    this.state = false;
    this.imgs = new PImage[4];
  }
  
  void set_img(PImage img){
    this.img = img;
    for (int i=0; i<4; i++){
      this.imgs[i] = this.img.get(i*15,0,15,20);
    }
  }
  
  Boolean lim(){
    if((x > width - 11) || (x < 0)) {
      return false;
    } else{
      return true;
    }
  }
  
  void move() {
    if ((this.state) && (this.lim())) {
      this.x += 1;
    }
  }

  void display(int frame) {
    if (this.state){
      int i = frame % 4;
      image(imgs[i], this.x, this.y, 45, 60);
    }
    else{
      image(imgs[3], this.x, this.y, 45, 60);
    }
  }
}