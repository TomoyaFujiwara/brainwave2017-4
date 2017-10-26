class Start {
  
  PImage start_img;
  
  void set_img(PImage img){
    this.start_img = img;
  }
  
  void display(){
     if (isStart){
       image(start_img,350, 150, 500, 300);
       if (key == ' '){
          background(background_img);
          isStart = false;
       }
     }
  }
}