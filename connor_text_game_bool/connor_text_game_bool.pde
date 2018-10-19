//use the text file to input the text for the game
//
//this loads each line as a element in a array
//use a if statment like on line 71-73 to change the count value
//     if (text.equals("go north")) { 
//      count = 1;
//  }



import controlP5.*; // imports ControlP5 library 
ControlP5 cp5; // gives a name to ControlP5

int count = 0;
int text_file_lenght = 0;
PFont[] font = new PFont[100]; // add more to the array as needed

boolean[] check = new boolean[100];

String text;

void setup(){
  size (800,800);
   cp5 = new ControlP5(this); // initialized cp5 as a new ControlP5 instance
   cp5.addTextfield("Input").setPosition(315, 400).setSize(150, 25).setAutoClear(false); // adds textfield for player input
   cp5.addBang("Submit").setPosition(415, 400).setSize(50, 25); // adds a submit button
  
  
  // used this to create your font
  for (int i = 0; i < font.length; i ++){
   // set up the font
   font[i] = createFont("Arial", 16,true); // Arial, 16 point, anti-aliasing on
   check[i]= true;
  }
  
}


void draw(){
  background(0);
  
  String s = ("DragonSlayer: Apparitions of Karnoth"); // creates title
  PFont f = createFont("Georgia Bold", 32); // sets font and size of title
  textFont(f); // sets PFont variable to "f"
  text(s, 75, 325); // sets position of text
  
  String p = ("(c) Connor Morley, IBCS, 2018, all rights reserved"); // creates copyright statement
  PFont f1 = createFont("Georgia", 14); // sets font and size of copyright statement
  textFont(f1); // sets PFont variable to "f1"
  text(p, 238, 375); // sets position of text
  
  textFont(font[1],32);                  
  fill(255);    
  line_load();
}

void line_load(){
  // loads txt file
  String[] lines = loadStrings("text.txt");
   text_file_lenght = lines.length;
   
   // this is wher the font size can be changed
   textSize(12);
   // this is where the line is called and where the text box is defined
   //text((lines[count]),width/4, height/4, width/2,  height/2);
     text((lines[count]), 85, 535, 650, 200);
  noFill();
  rect(75, 475, 650, 200);
  stroke(255);
  

   
}


void Submit() {
  text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("go north")) { 
      count = 1;
      check[0]=false;
      
  }
  
  text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("light on")&& check [0]==false) { 
      count = 2;
      
  }
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && count <text_file_lenght -1) {
      count = count +1;
    } else if (keyCode == DOWN && count > 0) {
    count = count -1; 
    } 
  } 
}