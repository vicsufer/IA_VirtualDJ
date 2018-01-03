class BtnPlay extends AbstractBoton
{
    AudioPlayer sound;
    AudioPlayer sound2;
    
    public BtnPlay(int x, int y, int w, int h, String label)
    {
      super(x,y,w,h,label);
    }
    
    public void setAudio(AudioPlayer sound, AudioPlayer sound2)
    {
      this.sound = sound;
      this.sound2 = sound2;
    }
    
    public void detect(int yPos) {
       if(super.isPressed(fd) && !sound.isPlaying()){
          sound.play();
          if (sound2!=null && !sound.isPlaying())
            sound2.play();
       }
    }
    
}