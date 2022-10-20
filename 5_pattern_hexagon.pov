// 5_pattern_hexagon.pov
#include "colors.inc"
#include "skies.inc"  
#include "textures.inc"  


sky_sphere {
  S_Cloud2
}          

camera{ 
  location <0.0, 0.0, -3.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0,3.0,-3.0> 
  color rgb <1.0, 1.0, 1.0>
} 

plane {
  y, -1.0
  pigment {hexagon 
    color Red,
    color Green,
    color Blue, 
    scale 0.5}      
}

sphere {
  <0,0,0>, 1
  texture { Blue_Agate }
}  
