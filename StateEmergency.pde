class StateEmergency extends State
{
  
  Button infant = new Button(0, 0, width, height/3, color(255, 0, 0));
  Button child = new Button(0, height/3, width, height/3, color(0, 255, 0));
  Button adult = new Button(0, height*2/3, width, height/3, color(0, 0, 255));
 
  
  public StateEmergency(){
    
  }
  
  void display(){
    infant.display();
    child.display();
    adult.display();
   
  
  }
  
  void mousePressed(){
     if (infant.clicked())
        nextState("stateEInfant");
        
     if (child.clicked()){
        nextState("stateEChild");
     }
        
     if (adult.clicked())
        nextState("stateEAdult");
  }
  
  //String stateName(){
  //  return "StateEmergency";
  //}
  
  
  
}