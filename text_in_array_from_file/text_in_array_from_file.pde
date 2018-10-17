int count = 0;
int text_file_lenght = 0;
PFont[] font = new PFont[100]; // add more to the array as needed


void setup(){
  size (400,400);
  // used this to create your font
  for (int i = 0; i < font.length; i ++){
   // set up the font
   font[i] = createFont("Arial", 16,true); // Arial, 16 point, anti-aliasing on
  }
  
}


void draw(){
  background(0);
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
   text((lines[count]),width/4, height/4, width/2,  height/2);
   
 

   
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