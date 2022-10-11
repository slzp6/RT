// 2_sphere1.pov

#include "colors.inc"
  
camera{ 
  location <0.0, 0.0, -5.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

sphere {
  <0, 0, 0>  0.5      
  pigment {color Green}
}
                               
