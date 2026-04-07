//Buttons check point lol
void setup(){
  size(900,700);
  
  repeat = 0;
  while(repeat < wantButtonJustAskXD) {
    buttonType[repeat] = "no button >:D";
    buttonState[repeat] = "don't exist lol";
    repeat +=1;
  }
}
//make and store button stuff ig

int repeat;              // variables (either temporary functions or action based)
int repeatTwo;
String buttoPressed = "none"; 
String buttoActivated = "none";


int wantButtonJustAskXD = 67;   // number of buttons lol

String buttonType[] = new String [wantButtonJustAskXD];   //permanant button data (do not touch :S)
String buttonState[] = new String [wantButtonJustAskXD];

  //  Draw :D
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void draw(){//rn this is test for functionality :D
  background(0,100,206);
  singleButtonRenderer (width/2,height/2,60, 20, 30247206, 255000000, 255000000, .3, 2, "Not button :S", 1.2, .8, 1.1, .5, 5, "one click");
  singleButtonRenderer (300,500,50, 30, 30247206, 255000000, 255000, .3, 3, "button :D", 1.2, .8, 1.1, .5, 7, "two click");
  singleButtonRenderer (300,200,50, 30, 30247206, 255000000, 243, .3, 3, "forever button", 1.2, .8, 1.1, .5, 7, "perma on");
  text(buttoActivated,width/2,50);
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//animates button and see if button is clicked ofc
void singleButtonRenderer(float x, float y, float sizeX, float sizeY, int colors, int textColors, int borderColors, float fontSize, float corners, String Function, float hoverReaction, float hoverDim, float pressedReaction, float pressedDim, float borderSize, String type){

  
/// indexing buttons :D
//
  
  repeat = 0;
  while (repeat < wantButtonJustAskXD && buttonType[repeat].equals(type) == false){
    repeat +=1;
  }
  
  if (repeat == wantButtonJustAskXD){
    
    repeatTwo = 0;
    while (repeatTwo < wantButtonJustAskXD && buttonType[repeatTwo].equals("no button >:D") == false){
      repeatTwo += 1;
    }
    
    if (repeatTwo == wantButtonJustAskXD){
      println("u got too much buttons, chill");
    }
    else{
      buttonType[repeatTwo] = type;
      repeat = repeatTwo;
    }
  }
  
//
/// stops indexing buttons
  
   
  if (type.equals("one click")){ //disables button
    if (buttoActivated.equals(Function)){
       buttoActivated = "none";
    }
  }
  
  if ((abs(mouseX - x) < sizeX) && (abs(mouseY - y) < sizeY)) {    
    
    if (mousePressed == true){ //code for making button pressable ofc
      buttoPressed = Function;
      noStroke();
      fill((borderColors/1000000)*pressedDim, (floor(borderColors/1000)-(1000*floor(borderColors/1000000)))*pressedDim, (borderColors-1000*floor(borderColors/1000))*pressedDim);
      rect(x-(sizeX+borderSize)*pressedReaction, y-(sizeY+borderSize)*pressedReaction, (sizeX+borderSize)*2*pressedReaction, (sizeY+borderSize)*2*pressedReaction, (corners+borderSize)*pressedReaction);
      fill(floor(colors/1000000)*pressedDim, (floor(colors/1000)-(1000*floor(colors/1000000)))*pressedDim, (colors-1000*floor(colors/1000))*pressedDim);
      rect(x-(sizeX)*pressedReaction, y-(sizeY)*pressedReaction, (sizeX*2)*pressedReaction, (sizeY*2)*pressedReaction, corners*pressedReaction);
      textSize(sizeX*pressedReaction*fontSize);
      fill(floor(textColors/1000000)*pressedDim, (floor(textColors/1000)-(1000*floor(textColors/1000000)))*pressedDim, (textColors-1000*floor(textColors/1000))*pressedDim);
      textAlign(CENTER,CENTER);
      text(Function,x,y);
    }
    else{
      noStroke();
      fill(floor(borderColors/1000000)*hoverDim, (floor(borderColors/1000)-(1000*floor(borderColors/1000000)))*hoverDim, (borderColors-1000*floor(borderColors/1000))*hoverDim);
      rect(x-(sizeX+borderSize)*hoverReaction, y-(sizeY+borderSize)*hoverReaction, (sizeX+borderSize)*2*hoverReaction, (sizeY+borderSize)*2*hoverReaction, (corners+borderSize)*hoverReaction);
      fill(floor(colors/1000000)*hoverDim, (floor(colors/1000)-(1000*floor(colors/1000000)))*hoverDim, (colors-1000*floor(colors/1000))*hoverDim);
      rect(x-(sizeX)*hoverReaction, y-(sizeY)*hoverReaction, (sizeX*2)*hoverReaction, (sizeY*2)*hoverReaction, corners*hoverReaction);
      textSize(sizeX*hoverReaction*fontSize);
      fill(floor(textColors/1000000)*hoverDim, (floor(textColors/1000)-(1000*floor(textColors/1000000)))*hoverDim, (textColors-1000*floor(textColors/1000))*hoverDim);
      textAlign(CENTER,CENTER);
      text(Function,x,y);
    }
    
    if ((mousePressed == false) && (buttoPressed.equals(Function))){ // if button clicked :D
      
      if ((type.equals("two click")) && (buttoActivated.equals(Function))){ //disables button
        buttoActivated = "none";
        buttoPressed = "none";
      }
      else{
        buttoActivated = Function;
        buttoPressed = "none";
      }
    }
    
  }
  else{
    noStroke();
    fill(floor(borderColors/1000000), floor(borderColors/1000)-(1000*floor(borderColors/1000000)), borderColors-1000*floor(borderColors/1000));
    rect(x-(sizeX+borderSize), y-(sizeY+borderSize), (sizeX+borderSize)*2, (sizeY+borderSize)*2, (corners+borderSize));
    fill(floor(colors/1000000), floor(colors/1000)-(1000*floor(colors/1000000)), colors-1000*floor(colors/1000));
    rect(x-(sizeX), y-(sizeY), (sizeX*2), (sizeY*2), corners);
    textSize(sizeX*fontSize);
    fill(floor(textColors/1000000), floor(textColors/1000)-(1000*floor(textColors/1000000)), textColors-1000*floor(textColors/1000));
    textAlign(CENTER,CENTER);
    text(Function,x,y);
  }
}
