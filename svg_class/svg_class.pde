PShape s;

// Example: Two Car objects
Car myCar1;
Car myCar2; // Two objects!

Svg_test mySvg_test;
Svg_test mySvg_test2;
  
void setup(){
  size(600, 600);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),0,100,2); 
  myCar2 = new Car(color(0,0,255),0,10,1);
  mySvg_test = new Svg_test( 90, 90, 90, 90,4);
  mySvg_test2 = new Svg_test( 50, 50, 90, 99,1);
  
}



void draw() {
  background(255);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
 // a.show();
  mySvg_test.show();
  mySvg_test.move();
  mySvg_test2.show();
  mySvg_test2.move();


  
}