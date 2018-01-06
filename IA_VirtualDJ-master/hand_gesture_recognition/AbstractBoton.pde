abstract class AbstractBoton implements Boton{
  
    private String label;
    private Rectangle rect;
    private int c;
    
    public AbstractBoton(int x, int y, int w, int h, String label){
      this.label = label;
      this.rect = new Rectangle(x,y,w,h);
    }
    public void setLabel(String lbl){
       this.label = lbl; 
    }
    
    public void setRectangle (Rectangle r){
       this.rect = r; 
    }
    
    public void setC(int aux){
       this.c = aux; 
    }
    
    public String getLabel(){
       return this.label; 
    }
    
    public Rectangle getRectangle(){
       return this.rect; 
    }
    
    public int getC(){
       return this.c; 
    }
    
    public boolean isPressed(FingerDetector fd){
      double centerX = rect.x+rect.width/2;
      double centerY = rect.y+rect.height/2;
      boolean press = fd.goodPixel((int) centerX, (int)centerY);
       return press;
    }

    public void display(){
        noFill();
        noStroke();
        rectMode(CORNERS);
        rect(rect.x, rect.y, rect.x + rect.width, rect.y + rect.height);
        fill(255);
        textAlign(CENTER);
        text(label,rect.x, rect.y, rect.x + rect.width, rect.y + rect.height);
        textSize(10);
    }
    
    public abstract void detect(int yPos);
}