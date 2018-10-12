
int speed;
int xpos;
int ypos;

class Snakepart {
  int speed;
  int xpos;
  int ypos;

  Snakepart( int tempXpos, int tempYpos, int tempSpeed){ 
    xpos = tempXpos;
    ypos = tempYpos;
    speed = tempSpeed;
   }
  
void movehead(){
   if ((xpos < width-snake_speed) &&  right == true) {
       xpos = xpos + speed;
       println("x---"+ xpos);
       xpos_array[0] = xpos;
     }
    if (xpos > 0 && left == true) {
      xpos = xpos - speed;
      println("x---"+xpos);
       xpos_array[0] = xpos;
     }
   if (ypos < (height-snake_speed) &&  down == true) {
      ypos = ypos + speed;
      println("y---"+ypos);
     ypos_array[0] = ypos;
   }
    if (ypos > 0 && up == true){
      ypos = ypos - speed;
      println("y---"+ypos);
      ypos_array[0] = ypos;
    }
    
  }
}  