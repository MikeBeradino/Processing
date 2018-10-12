void keyPressed(){
  if (key == CODED)
  {

    if (keyCode == UP && down != true ){
       right = false;
        left = false;
        up = true;
        down = false;
    }
    if (keyCode == DOWN  && up != true){
        right = false;
        left = false;
        up = false;
        down = true;
    }
    if (keyCode == LEFT && right != true){
        right = false;
        left = true;
        up = false;
        down = false;
    }
    
    if (keyCode == RIGHT && left != true){
        right = true;
        left = false;
        up = false;
        down = false;
      }
  }
}