int Bulletx = 615;
int Bullety = 615 ;
Bullets Bullet1;
class Bullets { 
  color c;
  float xpos;
  float ypos;
  //float yspeed;

  Bullets(color tempC, float tempXpos, float tempYpos /*float tempYspeed*/) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    //yspeed = tempYspeed;
  } 

  void display() {
    fill(c);
    rectMode(CENTER);
    rect(Bulletx,Bullety,5,25);
    int m = millis();
    if (m > 1000) {
    Bullety= Bullety-15;
    //println("x" + Bullety);
  }
  if (Bullety < 0) {
    Bullety = 615;
  }
  
  }

  /*void drive() {
    ypos = ypos - yspeed;
    if (ypos < 0) {
      ypos = 615;
      
      
    }
  }*/
}