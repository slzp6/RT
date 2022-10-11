//  4_light1.pov 
#include "colors.inc"

camera{ 
  location <0.0, 0.0, -30.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0,15.0,0.0> 
  White 
} 

sphere { 
  <0.0, 0.0 ,0.0>, 3.0  
  pigment { Red }
}       

plane {
  <0.0,1.0,0.0>, -10
  pigment { White }
}