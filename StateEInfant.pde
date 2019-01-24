class StateEInfant extends State
{
 
  
  public StateEInfant(){
    
  }
  
  void display(){
    
    background(100);
    fill(255);
    ellipse(30, 30, 30, 30);
    text("emergency - infant", 100, 100);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    
    if (back.clicked())
        nextState("stateEmergency");
  }
  
  //String stateName(){
  //  return "StateEInfant";
  //}
  
  
  
}