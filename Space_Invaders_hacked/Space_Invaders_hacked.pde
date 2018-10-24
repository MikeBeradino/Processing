
int size =100;
int BossHealth;
int BossLives;
int DeadBoss;

//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
float enemy_1 =0; // start pos
boolean roe_1_dead = false;
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++


boolean [] enemy1 = new boolean [3];
//float [] enemy1x_pos = new float [3];
boolean [] enemy2 = new boolean [5];
//float [] enemy2x_pos = new float [5];
boolean [] enemy3 = new boolean [7];
//float [] enemy3x_pos = new float [7];
boolean [] enemy4 = new boolean [9];
//float [] enemy4x_pos = new float [9];

void setup() {
  size(1250, 700);
  background(0);
  TheHero = loadShape("Hero.svg");
  TheBoss = loadShape ("Boss.svg");
   BossHealth=125;
   BossLives=1;
   DeadBoss=0;
Bullet1 = new Bullets(color(255,0,0), Bulletx, Bullety);


for (int i =0; i < enemies1.length; i++) { 
  int placement = 574*i;
  enemies1[i] = new  Enemy(placement,Enemy1y,100,100,.5); 
  enemy1[i] = true;

  
}


for (int i = 0; i < enemies2.length; i++) {
  int placement = 287*i;
  enemies2[i] = new  Enemy(placement,Enemy2y,100,100,.5);
  enemy2[i] = true;
  //enemy2x_pos[i]= placement;
}

for (int i =0; i < enemies3.length; i++) { 
  int placement = 191*i;
  enemies3[i] = new  Enemy(placement,Enemy3y,100,100,0.5); 
  enemy3[i] = true;
  //enemy3x_pos[i]= placement; 
}

for (int i =0; i < enemies4.length; i++) {
 int placement = 144*i;
 enemies4[i] = new Enemy(placement, Enemy4y,100,100,0.5);
 enemy4[i] = true;
 //enemy4x_pos[i]= placement;
}

}

void draw() {
  clear();
int m = millis();
    fill(0);
   rectMode(CENTER);
   rect(625,350,1250,700); 
  shapeMode(CENTER);
  shape(TheBoss, Bossx, Bossy, 400, 300);
   rectMode(CENTER);
   fill(255);
   rect(EyeLx, Eyey, 30, 20);
   rectMode(CENTER);
   fill(255);
   rect(EyeRx, Eyey, 30, 20);
   shapeMode(CENTER);
   shape(TheHero, Herox, 650, 100, 100);
   shapeMode(CENTER);
   rectMode(CENTER);
   Bullet1.display();


//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
   enemy_1 = enemy_1 +.5; // the .5 is speed
   if (enemy_1> height && roe_1_dead == false){
   println("dead");
   bottom();
   }
   println(enemy_1);
   println(roe_1_dead);
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++

   
   
   //Bullet1.drive();

   //First Row
for (int i =0; i < enemies1.length; i++) { 
  int placement = 574*i;
  if (Bulletx>= placement && Bulletx <= placement +size && Bullety < Enemy1y +size && Bullety > Enemy1y -size && enemy1[i] == true) {
    enemies1[i] = new Enemy(-2000,-5000,100,100,0);
    enemy1[i] =  false;
    Bullety = 615;
    
  } 
  
  
 //+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
 //+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
  
  if (enemy1[0] ==  false && enemy1[1] ==  false &enemy1[2] ==  false){
    roe_1_dead = true;
  }
  
  
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
  
   
}

  for (int i =0; i < enemies1.length; i++) {
  enemies1[i].display();
  enemies1[i].move();
  


}
  //Second Row
for (int i =0; i < enemies2.length; i++) { 
  int placement = 287*i;
  if (Bulletx>= placement && Bulletx <= placement +size && Bullety < Enemy2y +placement && Bullety > Enemy2y -placement&& enemy2[i] == true) {
    enemies2[i] = new Enemy(-2000,-5000,100,100,0);
    enemy2[i] = false;
    Bullety = 615;
  }
}
 for (int i =0; i < enemies2.length; i++) {
  enemies2[i].display();
  enemies2[i].move();

}



  //Third Row
  for (int i =0; i < enemies3.length; i++) { 
  int placement = 191*i;
  if (Bulletx>= placement && Bulletx <= placement +size && Bullety < Enemy3y +placement && Bullety > Enemy3y -placement && enemy3[i] == true) {
    enemies3[i] = new Enemy(-2000,-5000,100,100,0);
    enemy3[i] =  false;
    Bullety = 615;
  } 
  if (Enemy3y == 500) {
  Enemy3y = 1500;
}
}

  for (int i =0; i < enemies3.length; i++) {
  enemies3[i].display();
  enemies3[i].move();
}

  //Fourth Row
  for (int i =0; i < enemies4.length; i++) { 
  int placement = 144*i;
  if (Bulletx>= placement && Bulletx <= placement +size && Bullety < Enemy4y +placement && Bullety > Enemy4y -placement && enemy4[i] == true) {
    enemies4[i] = new Enemy(-2000,-5000,100,100,0);
    enemy4[i] =  false;
    Bullety = 615;
  } 
  if (Enemy4y == 500) {
  Enemy4y = 1500;
}
}

  for (int i =0; i < enemies4.length; i++) {
  enemies4[i].display();
  enemies4[i].move();
}
  if (Bulletx>= Bossx -BossSize && Bulletx <= Bossx +BossSize && Bullety < Bossy +150  && Bullety > Bossy -150) {
    BossHealth = BossHealth-BossLives;
    println("H"+BossHealth);
    if (BossHealth == DeadBoss) {
   Bossx = Bossx+900;
    EyeRx = EyeRx+900;
    EyeLx = EyeLx+900;
    Bullety= 615;
    exit();
    //println("x"+Bossx); 
  }
  }
  
  if (m > 1000) {
    Bossy= Bossy+0.5;
    Eyey= Eyey+0.5;
  }









}





//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
void bottom(){
 
  textSize(100);
    textAlign(CENTER);
    text("): Game Over :(", 625, 350);
    textSize(50);
    textAlign(CENTER);
    fill(0,255,255);
    text("Press the space bar to reset", 625, 400);
    }
    
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++