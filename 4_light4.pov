//  4_light4.pov
#include "colors.inc"   


camera{ 
  location <0.0, 0.0, -20.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0,10.0,0.0> 
  White
  area_light
  <1,0,0>, <0,0,1>
  30,30
} 

sphere { 
  <0.0, 0.0 ,0.0>, 3.0  
  pigment { Red }
}       

plane {
  <0.0,1.0,0.0>, -5
  pigment { White }
}