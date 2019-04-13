// 06-height-field02.pov

#include "colors.inc"
#include "skies.inc" 

camera{ 
  location <0.0, 1.0, 3.0> 
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
  sys "06-height-field02bmp.bmp"     
  smooth
  pigment {Gold}
  translate <-0.5, -1.0, -0.5>
  scale <50, 10, 50>
}