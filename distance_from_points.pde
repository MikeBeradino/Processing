/*
using the haversine formula to get approximate distance from gps coordinates
*/




float d;
float lat1 = 34.12622; // input your 1st  latitued coordinate
float long1 = -118.47011 ; // input your 1st  longitued coordinate
float lat2 = 34.12621;// 2nd latitude
float long2 = -118.47008; // 2nd longitued

void draw() {
 float t = haversine(lat1,long1,lat2,long2);
  println(t +"km");
  exit();
  
}



float haversine(float lat1, float long1, float lat2, float long2) {
  // Latitude ranges from -90 to 90 degrees
  // Longitude ranges from -180 to 180 degrees
  float radius = 6371; // the approximate radius of the Earth in kilometers

  float dlat = radians(lat2 - lat1);
  float dlong = radians(long2 - long1);
  
  float a = sin(dlat/2)*sin(dlat/2) + cos(radians(lat1))*cos(radians(lat2))*sin(dlong/2)*sin(dlong/2);
  float c = 2 * atan2(sqrt(a), sqrt(1-a));
  d = radius * c;
  return d;
  
  
}