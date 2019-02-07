class StateTrain extends State
{
 
  Button infantTrain = new Button(0, 0, width, height/3, color(10, 10, 255), "Infant", 7);
  Button childTrain = new Button(0, height/3, width, height/3, color(105, 105, 255),"Child", 7);
  Button adultTrain = new Button(0, height*2/3, width, height/3, color(180, 180, 255), "Adult", 7);
  
  public StateTrain(){
    
  }
  
  void display(){
    infantTrain.display();
    childTrain.display();
    adultTrain.display();
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
    
    if (!(back.clicked()))
      {  
    
       if (infantTrain.clicked())
          nextState("stateTInfant");
        
       if (childTrain.clicked()){
          nextState("stateTChild");
       }
        
       if (adultTrain.clicked())
          nextState("stateTAdult");
        
      } 
  }
  
  //String stateName(){
  //  return "StateTrain";
  //}
  
  
  
}