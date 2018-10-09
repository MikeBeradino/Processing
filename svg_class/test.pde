class Svg_test {

  int xpos;
  int ypos;
  int xscale; 
  int yscale;
  int svgspeed;
 
Svg_test( int tempXpos, int tempYpos, int tempXscale, int tempYscale, int tempSvgspeed) {
    
    s = loadShape("svg_file.svg");
    xpos = tempXpos;
    ypos = tempYpos;
    xscale = tempXscale;
    yscale = tempYscale;
    svgspeed = tempSvgspeed;

   }



  void show() {
     shape(s, xpos, ypos, xscale, yscale);
  }
  
  void move() {
    xpos = xpos + svgspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }







}