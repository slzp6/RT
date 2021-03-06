// 06-height-field02.pov

#include "colors.inc"
#include "skies.inc" 

camera{ 
  location <0.0, 20.0, 0.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <0.0,20.0,0.0> 
  color rgb <1.0, 1.0, 1.0>
}      
sky_sphere {
  S_Cloud2
}

height_field {
  png "06-height-field02img.png"     
  smooth
  pigment {Gold}
  scale <10, 1, 10>     
}