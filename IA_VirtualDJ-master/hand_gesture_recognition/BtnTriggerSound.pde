class BtnTriggerSound extends AbstractBoton
{
    AudioSample sound;
    
    public BtnTriggerSound(int x, int y, int w, int h, String label, AudioSample sound)
    {
      super(x,y,w,h,label);
      this.sound = sound;
    }
    
    public void detect(int yPos) {
       if(super.isPressed(fd)){
         sound.trigger();
       }
    }
    
}