class StateCompressions extends State
{
  Button compressionsDone = new Button(0, height*3/4, width, height/6, color(100, 252, 100), "NEXT", 15);

  
  public StateCompressions(){
    
  }
  
  void display(){
   
    background(255, 190, 190);
    fill(255);   
 
    compressionsDone.display();
    
    drawBackButtons();
    
    /*if (age == Age.ADULT){
      image(compressionsAdult, 50, 100, 300, 300);
    }
    
    else if (age == Age.CHILD){
      image(compressionsChild, 50, 200, 300, 300);
    }*/
    
  //  drawCircle(); 
    
  }
  
  void mousePressed(){
    
    super.mousePressed();
    
    if(compressionsDone.clicked())
       nextState("stateAED");
  }
  
  }