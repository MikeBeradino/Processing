boolean keypress = false;  
int number_of_squares = 20;
int[] squares = new int[number_of_squares];

void setup(){
  size(400, 100);
  //background(255, 204, 0);
  rectMode(CENTER);
}
  
void draw(){
background(255, 204, 0);

keycheck(); 
//boxes();

}

void keycheck(){
   if (keypress == true){
   println("upkey pressed");
   boxesran();
   keypress = false;
 }

}



void boxesran(){
  
 int index = int(random(squares.length));
 rect((index*20)+10, height/2, 20, 20);
 println(index);
  
}




void boxes(){
  
// Use a for() loop to quickly iterate
// through all values in an array.
for (int i=0; i < number_of_squares; i++){         
  squares[i] = i;
}

// Read one array element each time through the for loop
for (int i = 0; i < squares.length; i++) {
  rect((i*20)+10, height/2, 20, 20);
}
  
}