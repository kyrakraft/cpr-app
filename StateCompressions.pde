class StateCompressions extends State
{
  
  
  Button compressionsDone = new Button(0, height*3/4, width, height/6, color(38, 8, 89), "NEXT", 15, color(0));

  public StateCompressions(){
    
  }

  private int time;
  private int seconds;
  private int minutes;
  
  void display(){

    time = millis();
    seconds = (int)(time/1000);
    minutes = 0;

    if(seconds>=60)
    {
      minutes++;
      seconds -= 60;
    }
    
    background(241, 229, 199);
    fill(0);   
    
    textSize(18);
    text("Elapsed time: " + minutes + " min " + seconds + " sec", width/2, height*2/7);
    
    drawCircle(); 
 
    compressionsDone.display();
    
    drawBackButtons();
    
    /*if (age == Age.ADULT){
      image(compressionsAdult, 50, 100, 300, 300);
    }
    
    else if (age == Age.CHILD){
      image(compressionsChild, 50, 200, 300, 300);
    }*/
        
  }
  
  void mousePressed(){
    
    super.mousePressed();
    
    if(compressionsDone.clicked())
       nextState("stateAED");
  }
  
  }
