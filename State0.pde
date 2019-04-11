class State0 extends State
{
  //home screen
  Button emergency = new Button(0, 0, width, height, color(38, 8, 89), "CPR Training App", 7, 255);
  //Button training = new Button(0, height*3/4, width, height/4, color(80, 80, 255), "Training", 7);
    
  public State0(){
    
  }
  
  void display(){
    fill(255);
     emergency.display();
    textMode(CENTER);
    textSize(width/53);
    text("Welcome to Marlborough Computer Science Projects", width/2, height/4);
    textSize(12);
    text("This app is for educational purposes only. In the case of a real emergency, call 911.", width/2, height*3/4);
   // training.display();
    //drawBackButtons();
  }
  
  void mousePressed(){
    
    super.mousePressed();
    
     if (!(back.clicked()))
      {  
        
      //  if (training.clicked())
        //    nextState("stateTrain");
        
        if (emergency.clicked())
            nextState("stateEmergency");
        
      }
  }
  
  //String stateName(){
  //  return "state0";
  //}
  
  
  
}