class State0 extends State
{
  //home screen
  Button emergency = new Button(0, 0, width, height, color(38, 8, 89), "", 7, 255);
  //Button training = new Button(0, height*3/4, width, height/4, color(80, 80, 255), "Training", 7);
    
  public State0(){
    
  }
  
  void display(){
    fill(255);
     emergency.display();
    textMode(CENTER);
    textSize(width/10);
    text("CPR Training App", width/2, height*1.3/3);
    textSize(width/30);
    text("Welcome to Marlborough Computer Science Projects", width/2, height/8);
    fill(255);
    noStroke();
    rect(0, height*5/6, width, height/4);

    image(MbroLogo, width*1/20, height*3.7/4);
    image(CHLogo, width*4.5/8, height*3.55/4);
    textSize(12);
    text("This app is for educational purposes only. \n In the case of a real emergency, call 911.", width/2, height*3.8/5);
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