class StateTInfant extends State
{
 
  
  public StateTInfant(){
    
  }
  
  void display(){
    
    background(100);
    fill(255);
    ellipse(30, 30, 30, 30);
    text("training - infant", 100, 100);
    
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