class StateTAdult extends State
{
 
  
  public StateTAdult(){
    
  }
  
  void display(){
    
    background(180, 180, 255);
    fill(255);
    text("training - adult", width/4, height/7);
    
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