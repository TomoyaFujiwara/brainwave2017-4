import processing.sound.*;

class Music {
  
  int dead_flg = 0;
  SoundFile dead_sound;
 
  Music(SoundFile dead_sound) {
    this.dead_sound = dead_sound;
  }
  
  void display(Player player){
    if (player.x >= 870) {
      image(clear_img, 350, 150, 500, 300);
      player.state = 0;
    }
  }
}