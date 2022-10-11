// 6_animation2.pov

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
  <0, 1.0, 0>, <0,-1.0, 0>, 0.8
  pigment {color rgb<0.0, 1.0, clock> }
}