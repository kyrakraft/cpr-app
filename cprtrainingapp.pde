//ArrayList<State> states; //no
//int currentStateNumber = 0; //no


State0 state0;
StateEmergency stateEmergency;
//StateEInfant stateEInfant;
//StateEChild stateEChild;
//StateEAdult stateEAdult;
StateTrain stateTrain;
StateTInfant stateTInfant;
StateTChild stateTChild;
StateTAdult stateTAdult;
StateCheckScene stateCheckScene;
StateCheckResponsive stateCheckResponsive;

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
  //statesMap.put("stateEInfant", stateEInfant);
  //statesMap.put("stateEChild", stateEChild);
  //statesMap.put("stateEAdult", stateEAdult);
  statesMap.put("stateTrain", stateTrain);
  statesMap.put("stateTInfant", stateTInfant);
  statesMap.put("stateTChild", stateTChild);
  statesMap.put("stateTAdult", stateTAdult);
  statesMap.put("stateCheckScene", stateCheckScene);
  statesMap.put("stateCheckResponsive", stateCheckResponsive);
 
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
  
  stateTInfant = new StateTInfant();
  stateTChild = new StateTChild();
  stateTAdult = new StateTAdult();
  
  visitedStates = new ArrayList<State>();
  //visitedStates.add(state0);
  
  current = state0;
  
  initializeMap();
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