int [] numbers = new int [10];
int mousebuffer = 0;
int size = 50;

void setup(){
  size (500, 300);
  for (int i = 0; i < numbers.length; i ++){
   numbers[i] = i *size; 
  }
  
}

void draw(){
  background(0);
  strokeWeight(3);
  
    for (int i = 0; i < numbers.length; i ++){
      println(mouseX-20,mouseX+20);
      //mousebuffer = (mouseX-20,mouseX+20);
      //rect(mouseX,mouseY,20,20);
         if (mouseX> numbers[i] && mouseX< numbers[i]+size && mouseY < height/2 +size && mouseY > height/2 -size){
             rect(numbers[i],height/2, 40,40);
             fill(random(255), random(255), random(255));
  
      }
      
    
  }


  
  
  
}