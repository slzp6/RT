// 6_animation1.pov 
//  
// Initial_Frame=0 Final_Frame=10
//   


#include "colors.inc"        
#include "shapes.inc"    
#include "stones.inc"

background{color White}     

camera {
  location <0, 0, -5>
  look_at <0, 0, 0>
}

light_source {
  <5,5,-10>
  color White
}

cylinder {
  <0, 2.0, 0>, <0,-2.0, 0>, 0.8
  texture {T_Stone2}
  rotate <0,180*clock,0>
}