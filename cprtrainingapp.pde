//ArrayList<State> states; //no
//int currentStateNumber = 0; //no


State0 state0;
StateEmergency stateEmergency;
StateTrain stateTrain;
StateTInfant stateTInfant;
StateTChild stateTChild;
StateTAdult stateTAdult;
StateCheckScene stateCheckScene;
StateCheckResponsive stateCheckResponsive;
StateGetHelp stateGetHelp;

PImage conciousnessAdult;
PImage yellAdult;
PImage checkBreathingAdult;
PImage compressionsAdult;
PImage conciousnessChild;
PImage yellChild;
PImage checkBreathingChild;
PImage compressionsChild;
PImage breathsChild;
PImage setsChild;
PImage AED;

HashMap<String, State> statesMap = new HashMap<String, State>();


private enum Age { 
  INFANT,
  CHILD,
  ADULT;
}

Age age = Age.CHILD;

ArrayList<State> visitedStates;

State current;


void initializeMap()
{
  statesMap.put("state0", state0);
  statesMap.put("stateEmergency", stateEmergency);
  statesMap.put("stateTrain", stateTrain);
  statesMap.put("stateTInfant", stateTInfant);
  statesMap.put("stateTChild", stateTChild);
  statesMap.put("stateTAdult", stateTAdult);
  statesMap.put("stateCheckScene", stateCheckScene);
  statesMap.put("stateCheckResponsive", stateCheckResponsive);
  statesMap.put("stateGetHelp", stateGetHelp);
 
}

void settings()
{
  size(400,700);
}

void setup()
{
  state0 = new State0();
  stateTrain = new StateTrain();
  stateEmergency = new StateEmergency();
  
  stateCheckResponsive = new StateCheckResponsive();
  stateCheckScene = new StateCheckScene();
  stateGetHelp = new StateGetHelp();
  
  stateTInfant = new StateTInfant();
  stateTChild = new StateTChild();
  stateTAdult = new StateTAdult();
    
  visitedStates = new ArrayList<State>();
  //visitedStates.add(state0);
  
  current = state0;
  
  initializeMap();
  
  conciousnessAdult = loadImage("conciousnessAdult.JPG");
  yellAdult = loadImage("yellAdult.JPG");
  checkBreathingAdult = loadImage("checkBreathingAdult.JPG");
  compressionsAdult = loadImage("compressionsAdult.JPG");
  conciousnessChild = loadImage("conciousnessChild.JPG");
  yellChild = loadImage("yellChild.JPG");
  checkBreathingChild = loadImage("checkBreathingChild.JPG");
  compressionsChild = loadImage("compressionsChild.JPG");
  breathsChild = loadImage("breathsChild.JPG");
  setsChild = loadImage("setsChild.JPG");
  AED = loadImage("AED.JPG");
}

void draw()
{
  current.display();
}


void mousePressed()
{
 current.mousePressed();
 
}

void homeState(){
  current = state0;
}

void previousState(){
   
  if (visitedStates.size()>0){
  current = visitedStates.get(visitedStates.size()-1);
  visitedStates.remove(visitedStates.size()-1);
  }
}

void nextState(String nextState) 
{
  visitedStates.add(current);
  //println(current);
  
  
  println("********");
  for (State s : visitedStates){
    println(s);
  }
  
  State newState = statesMap.get(nextState);
  
  if (newState == null)
  {
    println("newState null: " + nextState);  
  }
  
  current = newState;
    
}