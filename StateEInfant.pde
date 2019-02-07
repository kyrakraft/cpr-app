class StateEInfant extends State
{
 
  
  public StateEInfant(){
    
  }
  
  void display(){
    
    background(255, 50, 50);
    fill(255);
    text("emergency - infant", 100, 100);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
    //if (back.clicked()){
    //    //nextState("stateEmergency");
    //    previousState();
    //}
  }
  
  //String stateName(){
  //  return "StateEInfant";
  //}
  
  
  
}
