//  4-light2.pov       
#include "colors.inc"
camera{ 
  location <0.0, 0.0, -20.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0,20.0,0.0> 
  color rgb <1.0, 1.0, 1.0>
  spotlight
  point_at<0.0, 0.0, 0.0>
  radius 3
  falloff 15                     
  // falloff 30
} 

sphere { 
  <0.0, 0.0 ,0.0>, 3.0  
  pigment { Red }
}       

plane {
  <0.0,1.0,0.0>, -5
  pigment { White }
}