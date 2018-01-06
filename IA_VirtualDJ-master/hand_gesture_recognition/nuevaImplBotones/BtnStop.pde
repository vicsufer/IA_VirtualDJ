class BtnStop implements Boton
{
    Minim minim;
    AudioPlayer sound;
    AudioPlayer sound2;
  
    String label;
    Rectangle rect;
    int c;
    
    public BtnStop(int x, int y, int w, int h, String label, Minim minim, AudioPlayer sound, AudioPlayer sound2)
    {
      this.label = label;
      this.rect = new Rectangle(x,y,w,h);
      this.minim = minim;
      this.sound = sound;
      this.sound2 = sound2;
    }
    
    public boolean isPressed(FingerDetector fd)
    {
      double centerX = rect.x+rect.width/2;
      double centerY = rect.y+rect.height/2;
      boolean press = fd.goodPixel((int) centerX, (int)centerY);
      if(press)
      {
        c = 100;
        return true;
      }
      else
      {
        c = 255;
        return false;
      }
    }
    
    
    public void display()
    {
        fill(c);
        rectMode(CORNERS);
        rect(rect.x, rect.y, rect.x + rect.width, rect.y + rect.height);
        fill(0);
        textAlign(CORNERS);
        text(label,rect.x, rect.y, rect.x + rect.width, rect.y + rect.height);
    }
    
    public void detect(int yPos) {
       if(isPressed(fd) && sound.isPlaying() && sound2.isPlaying()){
          sound.pause();
          sound2.pause();
       }
    }
    
}