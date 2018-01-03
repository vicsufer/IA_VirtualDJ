class BtnVolume1 extends AbstractBoton
{
    Minim minim;
    AudioPlayer sound;
    
    public BtnVolume1(int x, int y, int w, int h, String label, Minim minim, AudioPlayer sound)
    {
      super(x,y,w,h,label);
      this.minim = minim;
      this.sound = sound;
    }
    
    public void detect(int yPos) {
      if(isPressed(fd)){
         float gain = yPos-(rect.y+rect.height/2);
         sound.setGain(gain);
      }
    }
    
}