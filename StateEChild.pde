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
<<<<<<< HEAD
  
=======
    super.mousePressed();
     //if (back.clicked()){
     //   previousState();
    //}
>>>>>>> 36a35e4c0b112e6cf2277976ae3774a9b493c70c
  }
  
  
  
}