//  4_light3.pov     
#include "colors.inc"
camera{ 
  location <0.0, 0.0, -20.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0,10.0,0.0> 
  color rgb <1.0, 1.0, 1.0>
  cylinder
  point_at<0.0, 0.0, 0.0>
  radius 1.5
  falloff 2.0
} 

sphere { 
  <0.0, 0.0 ,0.0>, 3.0  
  pigment { Red }
}       

plane {
  <0.0,1.0,0.0>, -5
  pigment { White }
}