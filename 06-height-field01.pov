// 06-height-field01.pov

#include "colors.inc"
#include "skies.inc" 

camera{ 
  location <0.0, 7.0, -2.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}      
sky_sphere {
  S_Cloud2
}

height_field {
  bmp "tori-bmp-bw-rev.bmp"
  smooth
  pigment {Green}
  translate <-0.5, -1.0, -0.5>
  scale <6, 0.2, 6>
}