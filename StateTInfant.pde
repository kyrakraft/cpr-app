class StateTInfant extends State
{
 
  
  public StateTInfant(){
    
  }
  
  void display(){
    
    background(10, 10, 255);
    fill(255);
    text("training - infant", width/4, height/7);
    
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