//Buttons check point lol

//             sample book tag code below
  ///////////////////////////////////////////////////////////////////////////////////////////////////
  // Book Tag code, (useful lol) (use to mark cliffhangers)
  ///////////////////////////////////////////////////////////////////////////////////////////////////


void setup(){
  size(900,700);
  
  repeat = 0;
  while(repeat < wantButtonJustAskXD) {
    buttonType[repeat] = "no button >:D";
    buttonState[repeat] = "don't exist lol";
    sliderVal[repeat] = 0;
    sliiiiiiderDentitylol[repeat] = "not here?";
    
    repeat +=1;
  }
}

//make and store button stuff ig

int repeat;              // variables (either temporary functions or action based)
int repeatTwo;
int repeatLol;
String buttoPressed = "none"; 
String buttoActivated = "none";
String ValGotten = "Do not exist ofc :S"; // var used in sync with awsome function getValOfThingy
float SValGotten = 0; 

int wantButtonJustAskXD = 67;   // number of buttons lol

String buttonType[] = new String [wantButtonJustAskXD];   //permanant button data (do not touch :S)
String buttonState[] = new String [wantButtonJustAskXD];

//Slider data :D
float sliderVal[] = new float [wantButtonJustAskXD];
String sliiiiiiderDentitylol[] = new String [wantButtonJustAskXD];


  //  Draw :D
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void draw(){//rn this is test for functionality :D
  background(0,100,206);
  singleButtonRenderer (width/2,height/2,60, 20, 30247206, 255000000, 255000000, .3, 2, "Not button :S", 1.2, .8, 1.1, .5, 5, "one click", "Not button :S");
  
  repeat = 0;
  while (repeat < wantButtonJustAskXD && buttonState[repeat].equals("button :D") == false){
    repeat += 1;
  }
  
  if (repeat < wantButtonJustAskXD){
  singleButtonRenderer (300,500,50, 30, 30247206, 255000000, 255000, .3, 3, "button :D", 1.2, .8, 1.1, .5, 7, "two click", "button :D");
  }
  else{
  singleButtonRenderer (300,500,50, 30, 30247206, 255000000, 255000, .3, 3, "button :D", 1.2, .8, 1.1, .5, 7, "two click", "RIP button :D");
  }
  
  singleButtonRenderer (300,200,50, 30, 30247206, 255000000, 243, .3, 3, "forever button", 1.2, .8, 1.1, .5, 7, "perma on", "forever button");
  text(buttoActivated,width/2,50);
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//animates button and see if button is clicked ofc
void singleButtonRenderer(float x, float y, float sizeX, float sizeY, int colors, int textColors, int borderColors, float fontSize, float corners, String Function, float hoverReaction, float hoverDim, float pressedReaction, float pressedDim, float borderSize, String type, String displayName){

  
/// indexing buttons :D
//
  
  repeat = 0;
  while (repeat < wantButtonJustAskXD && buttonType[repeat].equals(Function) == false){
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
      buttonType[repeatTwo] = Function;
      repeat = repeatTwo;
    }
  }
  
  if (buttoActivated.equals(Function)){
    buttonState[repeat] = buttoActivated;
  }
  
//
/// stops indexing buttons
  
   
  if (type.equals("one click")){ //disables button
    if (buttonState[repeat].equals(Function)){
       buttoActivated = "none";
       buttonState[repeat] = "disactivated :S";
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
      text(displayName,x,y);
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
      text(displayName,x,y);
    }
    
    if ((mousePressed == false) && (buttoPressed.equals(Function))){ // if button clicked :D
      
      if ((type.equals("two click")) && (buttonState[repeat].equals(Function))){ //disables button
        buttoActivated = "none";
        buttoPressed = "none";
        buttonState[repeat] = "disactivated :S";
        
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
    text(displayName,x,y);
    
    if (buttoPressed.equals(Function)){
      buttoPressed = "none";
    }
  }
}

//// SLIIIIIIDERS

void sliders (String activTrigger, float xMin, float xMax, float y, float min, float max, String lableStatus, float lableSize, float numbSize, float Color, float BorderColor, float Thickness, float circleSize, float borderWeight, float touchie, String Mode){
  
  repeat = 0; // see if button to trigger thingy is pressed :D
  while (repeat < wantButtonJustAskXD && buttonState[repeat].equals(activTrigger) == false){ 
    repeat += 1;
  }
  
  //drawwing
 
  if (repeat < wantButtonJustAskXD){
    
    //Butto indexed :D
    
    repeatTwo = 0;
    while (repeatTwo < wantButtonJustAskXD && sliiiiiiderDentitylol[repeatTwo].equals(lableStatus) == false){ 
      repeatTwo += 1;
    }
    
  
    if (!(repeatTwo < wantButtonJustAskXD)){
      repeatLol = 0;
      while(repeatLol < wantButtonJustAskXD && sliiiiiiderDentitylol[repeatLol].equals("not here?") == false){
        repeatLol+=1;
      }  
      sliiiiiiderDentitylol[repeatLol] = lableStatus;
      repeatTwo = repeatLol;
      repeat = repeatTwo;
      sliderVal[repeat] = min + (max - min)/2;
    }
    else{
      repeat = repeatTwo;
    }
    
    
    //RAINBOOW!!
    float ClPink = floor(Color/1000000);
    float ClLime = floor(Color/1000)-(1000*floor(Color/1000000));
    float ClAqua = Color-1000*floor(Color/1000);
    
    float BrPink = floor(BorderColor/1000000);
    float BrLime = floor(BorderColor/1000)-(1000*floor(BorderColor/1000000));
    float BrAqua = BorderColor-1000*floor(BorderColor/1000);
    
    
     //*scribble* *scribble*
    if ((abs(mouseX-(xMin+((xMax-xMin)/2))) <= (xMax-xMin+Thickness+borderWeight)/2) && (abs(mouseY-y) <= Thickness)){ // if touching then:
     
      stroke(BrPink, BrLime, BrAqua);
      strokeWeight(Thickness+borderWeight+touchie);
      line(xMin-touchie, y, xMax+touchie, y);
      circle(map(sliderVal[repeat], min, max, xMin, xMax), y, circleSize+borderWeight+touchie);
      stroke(ClPink, ClLime, ClAqua);
      strokeWeight(Thickness);
      line(xMin - touchie, y, xMax + touchie, y);
      circle(map(sliderVal[repeat], min, max, xMin, xMax), y, circleSize+touchie);
      
      if (Mode.equals("Numbered")){
        stroke(BrPink, BrLime, BrAqua);
        textSize(numbSize + touchie);
        textAlign(CENTER,CENTER);
        text(max, xMax + borderWeight + numbSize*1.3 + touchie, y + (borderWeight + touchie));
        text(min, xMin - borderWeight - numbSize*1.3 - touchie, y + (borderWeight + touchie));
        textSize(numbSize*1.3 + touchie);
        text(sliderVal[repeat], map(sliderVal[repeat], min, max, xMin, xMax), y - (numbSize * 1.5 + borderWeight + touchie)); 
      }
      
      if (Mode.equals("Labled")){
        textSize(lableSize + touchie);
        textAlign(CENTER,CENTER);
        text(lableStatus, xMin + ((xMax-xMin)/2), y + (lableSize + touchie));
      }
      
      if (Mode.equals("unidentified Flying Object")){
        textSize(lableSize + touchie);
        textAlign(CENTER,CENTER);
        text(lableStatus, xMin + ((xMax-xMin)/2), y + (lableSize + touchie));
        stroke(BrPink, BrLime, BrAqua);
        textSize(numbSize + touchie);
        textAlign(CENTER,CENTER);
        text(max, xMax + borderWeight + numbSize*1.3 + touchie, y + (borderWeight + touchie));
        text(min, xMin - borderWeight - numbSize*1.3 - touchie, y + (borderWeight + touchie));
        textSize(numbSize*1.3 + touchie);
        text(sliderVal[repeat], map(sliderVal[repeat], min, max, xMin, xMax), y - (numbSize * 1.5 + borderWeight + touchie)); 
      }
      
      //code for like making mouse do stuff?
      
      if (mousePressed == true && abs(mouseX-(xMin+(xMax-xMin)/2)) <= (xMax-xMin)/2){
        sliderVal[repeat] = constrain(map(mouseX, xMin, xMax, min, max), min, max);
      }
      
    }
    
    
    else{
   
      stroke(BrPink, BrLime, BrAqua);
      strokeWeight(Thickness+borderWeight);
      line(xMin, y, xMax, y);
      circle(map(sliderVal[repeat], min, max, xMin, xMax), y, circleSize+borderWeight);
      stroke(ClPink, ClLime, ClAqua);
      strokeWeight(Thickness);
      line(xMin, y, xMax, y);
      circle(map(sliderVal[repeat], min, max, xMin, xMax), y, circleSize);
      fill(ClPink, ClLime, ClAqua);
      
      if (Mode.equals("Numbered")){
        stroke(BrPink, BrLime, BrAqua);
        textSize(numbSize);
        textAlign(CENTER,CENTER);
        text(max, xMax + borderWeight + numbSize*1.3, y + (borderWeight));
        text(min, xMin - borderWeight - numbSize*1.3, y + (borderWeight));
        textSize(numbSize*1.3);
        text(sliderVal[repeat], map(sliderVal[repeat], min, max, xMin, xMax), y - (numbSize * 1.5 + borderWeight)); 
      }
      
      if (Mode.equals("Labled")){
        textSize(lableSize);
        textAlign(CENTER,CENTER);
        text(lableStatus, xMin + ((xMax-xMin)/2), y - (lableSize));
      }
      
      if (Mode.equals("unidentified Flying Object")){
        textSize(lableSize);
        textAlign(CENTER,CENTER);
        text(lableStatus, xMin + ((xMax-xMin)/2), y - (lableSize));
        stroke(BrPink, BrLime, BrAqua);
        textSize(numbSize);
        textAlign(CENTER,CENTER);
        text(max, xMax + borderWeight + numbSize*1.3 + touchie, y - (borderWeight));
        text(min, xMin - borderWeight - numbSize*1.3 - touchie, y - (borderWeight));
        textSize(numbSize*1.3);
        text(sliderVal[repeat], map(sliderVal[repeat], min, max, xMin, xMax), y + (numbSize * 1.5 + borderWeight)); 
      }
        
      
    }
   
    
  }
  
  
}


void getValOfThingy (String type, String name){
  
  if (type.equals("Button")){
    
    repeat = 0;
    while (repeat < wantButtonJustAskXD && buttonType[repeat].equals(name) == false){
      repeat += 1;
    }
    
    if (!(repeat < wantButtonJustAskXD)){
      ValGotten = "Butto not found";
    }
    else{
      ValGotten = buttonState[repeat];
    } 
    
  }
  else{
    
    repeat = 0;
    while (repeat < wantButtonJustAskXD && sliiiiiiderDentitylol[repeat].equals(name) == false){
      repeat += 1;
    }
    
    if (!(repeat < wantButtonJustAskXD)){
      SValGotten = 999999999;
    }
    else{
    SValGotten = sliderVal[repeat];
    }
    
  }
  
  
}
