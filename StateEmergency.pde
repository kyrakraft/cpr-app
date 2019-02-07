class StateEmergency extends State
{
  
  Button infant = new Button(0, 0, width, height/3, color(255, 50, 50), "Infant", 7);
  Button child = new Button(0, height/3, width, height/3, color(255, 125, 125),"Child", 7);
  Button adult = new Button(0, height*2/3, width, height/3, color(255, 190, 190), "Adult", 7);
 
  
  public StateEmergency(){
    
  }
  
  void display(){
    infant.display();
    child.display();
    adult.display();
    drawBackButtons();
   
  
  }
  
  void mousePressed(){
    
  
  //   if (back.clicked()){
  //      //nextState("state0");
  //      previousState();
  //   }
    super.mousePressed();
    
    if (!(back.clicked()))
      {  
    
       if (infant.clicked()){
          nextState("stateCheckScene");
          age = Age.INFANT;
       }
        
       if (child.clicked()){
          nextState("stateCheckScene");
          age = Age.CHILD;
       }
        
       if (adult.clicked())
          nextState("stateCheckScene");
          age = Age.ADULT;
      }  
  }
  
  //String stateName(){
  //  return "StateEmergency";
  //}
  
  
  
}