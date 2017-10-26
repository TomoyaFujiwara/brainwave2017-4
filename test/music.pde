class Music {
  
  int dead_flg = 0;
  int bgm_flg = 0;
  SoundFile dead_sound;
  SoundFile bgm;
  
  Music(SoundFile dead_sound, SoundFile bgm) {
    this.dead_sound = dead_sound;
    this.bgm = bgm;
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
}