class Music {
  
  int dead_flg = 0;
  int bgm_flg = 0;
  int clear_flg = 0;
  SoundFile dead_sound;
  SoundFile bgm;
  SoundFile clear_sound;
  
  Music(SoundFile dead_sound, SoundFile bgm, SoundFile clear_sound) {
    this.dead_sound = dead_sound;
    this.bgm = bgm;
    this.clear_sound = clear_sound;
  }
  
  void play_dead(Player player){
    if ((player.state == 2) && (this.dead_flg == 0)) {
        bgm.stop();
        dead_sound.play();
        dead_flg = 1;
    }
  }
  
  void play_bgm() {
    if (this.bgm_flg == 0) {
        bgm.play();
        bgm_flg = 1;
    }
  }
  
  void play_clear(Player player) {
    if((player.x >= 870) & (this.clear_flg == 0)) {
      bgm.stop();
      clear_sound.play();
      clear_flg = 1;
    }
  }
  
}