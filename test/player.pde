class Player{
  float x, y;
  float shape_x, shape_y;
  int state;
  PImage[] imgs;

  Player(float x, float y, float shape_x, float shape_y) {
    this.x = x;
    this.y = y;
    this.shape_x = shape_x;
    this.shape_y = shape_y;
    this.state = 0;
    this.imgs = new PImage[5];
  }
  
  void set_img(PImage run_img, PImage dead_img){
    for (int i=0; i<4; i++){
      this.imgs[i] = run_img.get(i*15,0,15,20);
    }
    imgs[4] = dead_img.get(0, 0, 16, 24);
  }
  
  Boolean lim(){
    if((x > width - 11) || (x < 0)) {
      return false;
    } else{
      return true;
    }
  }
  
  void move() {
    if ((this.state == 1) && (this.lim())) {
      this.x += 2;
    }
    else if ((this.state == 2) && (this.lim())){
      this.y += 5;
    }
  }

  void display(int frame) {
    if (this.state == 1){
      int i = frame % 4;
      image(imgs[i], this.x, this.y, 45, 60);
    }
    else if(this.state == 0){
      image(imgs[3], this.x, this.y, 45, 60);
    }
    else if(this.state == 2){
      image(imgs[4], this.x, this.y, 45, 60);
    }
  }
}