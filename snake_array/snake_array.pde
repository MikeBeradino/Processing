boolean right = false;  
boolean up = false;
boolean down = false;
boolean left = false;
int snake_speed= 10;
int size = snake_speed-1;
int time=0;
int maxlenth = 100;

int[] xpos_array = new int[maxlenth];
int[] ypos_array = new int[maxlenth];
Snakepart[] snakepart_array = new Snakepart[maxlenth];

void setup() {
  size(500,500);
  
 //noStroke();
  fill(255, 102,255);
for (int i = 0; i < snakepart_array.length; i++) {
   snakepart_array[i] = new Snakepart(xpos_array[0],ypos_array[0],snake_speed);
    }
  }

void draw(){ 
  time++;
  if (time == 3)
  {
    background(20); 
    drawsnake();
    time=1;
  }
}




void drawsnake(){
  for (int i = maxlenth-1; i > 0; i--) {
    xpos_array[i] = xpos_array[i-1];
    ypos_array[i] = ypos_array[i-1];
    rect(xpos_array[i], ypos_array[i], size, size);
    snakepart_array[i].movehead();
  }
}