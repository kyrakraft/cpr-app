class StateEChild extends State
{
 
  
  public StateEChild(){
    
  }
  
  void display(){
    
    background(255, 125, 125);
    fill(255);
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
