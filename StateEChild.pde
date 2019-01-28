class StateEChild extends State
{
 
  
  public StateEChild(){
    
  }
  
  void display(){
    
    background(100);
    fill(255);
    ellipse(30, 30, 30, 30);
    text("emergency - child", 100, 100);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
     //if (back.clicked()){
     //   previousState();
    //}
  }
  
  
  
}
