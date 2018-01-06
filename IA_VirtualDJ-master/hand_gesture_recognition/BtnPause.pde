class BtnPause extends AbstractBoton
{
    AudioPlayer sound;
    AudioPlayer sound2;
    
    public BtnPause(int x, int y, int w, int h, String label)
    {
      super(x,y,w,h,label);
    }
    
    public void setAudio(AudioPlayer sound, AudioPlayer sound2)
    {
      this.sound = sound;
      this.sound2 = sound2;
    }
    
    public void detect(int yPos) {
       if(super.isPressed(fd) && sound.isPlaying()){
          sound.pause();
          if (sound2!=null && sound2.isPlaying())
            sound2.pause();
       }
    }
}
    