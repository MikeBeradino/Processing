Enemy[] enemies1 = new Enemy [3];
Enemy[] enemies2 = new Enemy [5];
Enemy[] enemies3 = new Enemy [7];
Enemy[] enemies4 = new Enemy [9];

PShape EnemyShape;

float Enemy1y = 0;
float Enemy2y = -200;
float Enemy3y = -400;
float Enemy4y =-600;
boolean dead =false;



class Enemy {
  int xpos;
  float ypos;
  int xscale; 
int yscale;
  float enemyspeed;
  
  Enemy(int tempXpos, float tempYpos, int tempXscale, int tempYscale, float tempEnemyspeed) {
    EnemyShape = loadShape("Enemy.svg");
    xpos = tempXpos;
    ypos = tempYpos;
  xscale = tempXscale;
  yscale = tempYscale;
    enemyspeed = tempEnemyspeed;
}
void display() {

    shapeMode(CORNER);
     shape(EnemyShape, xpos, ypos, 100, 100);
    
  }

void move() {
    ypos = ypos + enemyspeed;
     }
 
  
  
  

  
}