/*
    cprtrainingapp -- a mobile app for CPR training

    Honors Computer Science Projects 2018-19
    Marlborough School
    in collaboration with Children's Hospital Los Angeles

    Copyright (C) 2019 Marlborough School

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/


/* processing.js preload directives for images */
/* @pjs preload="data/conciousnessAdult.JPG"; */
/* @pjs preload="data/yellAdult.JPG"; */
/* @pjs preload="data/checkBreathingAdult.JPG"; */
/* @pjs preload="data/compressionsAdult.JPG"; */
/* @pjs preload="data/conciousnessChild.JPG"; */
/* @pjs preload="data/yellChild.JPG"; */
/* @pjs preload="data/checkBreathingChild.JPG"; */
/* @pjs preload="data/compressionsChild.JPG"; */
/* @pjs preload="data/breathsChild.JPG"; */
/* @pjs preload="data/setsChild.JPG"; */
/* @pjs preload="data/AED.JPG"; */


//ArrayList<State> states; //no
//int currentStateNumber = 0; //no
import processing.sound.*;

State0 state0;
StateEmergency stateEmergency;
StateTrain stateTrain;
StateTInfant stateTInfant;
StateTChild stateTChild;
StateTAdult stateTAdult;
StateCheckScene stateCheckScene;
StateCheckResponsive stateCheckResponsive;
StateGetHelp stateGetHelp;
StateNoCPR stateNoCPR;
StateCompressions stateCompressions;
StateAED stateAED;

PFont font;

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

PImage CHLogo;
PImage MbroLogo;

HashMap<String, State> statesMap = new HashMap<String, State>();

/*
private enum Age { 
  INFANT,
  CHILD,
  ADULT;
}
*/

class Age
{
    public static final int INFANT = 0;
    public static final int CHILD = 1;
    public static final int ADULT = 2;
}

int age = Age.CHILD;

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
  statesMap.put("stateNoCPR", stateNoCPR);
  statesMap.put("stateCompressions", stateCompressions);
  statesMap.put("stateAED", stateAED);
 
}

void setup()
{
  size(400, 800);
  state0 = new State0();
  stateTrain = new StateTrain();
  stateEmergency = new StateEmergency();
  
  stateCheckResponsive = new StateCheckResponsive();
  stateCheckScene = new StateCheckScene();
  stateGetHelp = new StateGetHelp();
  stateNoCPR = new StateNoCPR();
  stateCompressions = new StateCompressions();
  stateAED = new StateAED();
  
  font = createFont("Benton Sans Bold.otf", 12);
  
  stateTInfant = new StateTInfant();
  stateTChild = new StateTChild();
  stateTAdult = new StateTAdult();
    
  visitedStates = new ArrayList<State>();
  //visitedStates.add(state0);
  
  current = state0;
  
  initializeMap();
  
  conciousnessAdult = loadImage("data/conciousnessAdult.JPG");
  yellAdult = loadImage("data/yellAdult.JPG");
  checkBreathingAdult = loadImage("data/checkBreathingAdult.JPG");
  compressionsAdult = loadImage("data/compressionsAdult.JPG");
  conciousnessChild = loadImage("data/conciousnessChild.JPG");
  yellChild = loadImage("data/yellChild.JPG");
  checkBreathingChild = loadImage("data/checkBreathingChild.JPG");
  compressionsChild = loadImage("data/compressionsChild.JPG");
  breathsChild = loadImage("data/breathsChild.JPG");
  setsChild = loadImage("data/setsChild.JPG");
  AED = loadImage("data/AED.JPG");
  
  CHLogo = loadImage("CHLogo.png");
  MbroLogo = loadImage("MbroLogo.png");
  
  initializeSound(); //comment this out for mobile
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
