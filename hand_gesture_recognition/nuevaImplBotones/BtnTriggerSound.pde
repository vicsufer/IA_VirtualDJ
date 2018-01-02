class BtnTriggerSound implements Boton
{
    Minim minim;
    AudioSample sound;
  
    String label;
    Rectangle rect;
    int c;
    
    public BtnTriggerSound(int x, int y, int w, int h, String label, Minim minim, AudioSample sound)
    {
      this.label = label;
      this.rect = new Rectangle(x,y,w,h);
      this.minim = minim;
      this.sound = sound;
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
       if(isPressed(fd)){
         sound.trigger();
       }
    }
    
}