void keyPressed() { 
  if (key == CODED) {
    if (keyCode == RIGHT) {
     Herox += 20;
     Bulletx += 20;
     EyeLx += 1;
     EyeRx += 1;
    }
        if (keyCode == LEFT) {
      Herox -= 20;
      Bulletx -= 20;
      EyeLx -= 1;
     EyeRx -= 1;
   }
 }
  if(Herox>1210) {
    Herox = 1210;
    Bulletx = 1250;
  }
  if(Herox<40) {
    Herox = 40;
    Bulletx = 80;
  }
  if(Herox > 1050) {
    EyeLx = 586;
    EyeRx = 711;
  }
  if(Herox < 200) {
    EyeLx = 538;
    EyeRx = 663;
  }
  if(Herox == 575) {
    EyeLx = 562;
    EyeRx = 687;
  }
  
  /*if (keyPressed) {
  if (key == ' ' || key == ' ') {
    Bullet1.display();
    Bullet1.drive();
  }
  } else {
    Bullet1 = new Bullets(color(255,0,0), Bulletx, Bullety, 10);
  }*/
}