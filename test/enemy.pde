class Enemy {
  float x, y;
  float shape_x, shape_y;
  int state;
  PImage[] imgs;

  Enemy(float x, float y, float shape_x, float shape_y) {
    this.x = x;
    this.y = y;
    this.shape_x = shape_x;
    this.shape_y = shape_y;
    this.state = 0;
    this.imgs = new PImage[2];
  }
  
  void set_img(PImage stand_image, PImage sit_image){
    imgs[0] = sit_image;
    imgs[1] = stand_image;
  }

  void display() {
    if (this.state == 0) {
      image(imgs[0], 900, 650, 90, 70);
    } else {
      image(imgs[1], this.x, this.y, 90, 140);
    }
    
  }
}