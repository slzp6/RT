// 5_height_field2view.pov

#include "colors.inc"
#include "skies.inc" 

camera{ 
  location <0.0, 20, 0.0> 
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
  png "5_height_field2img.png"     
  smooth
  pigment {Gold}
  scale <10, 1, 10>     
  translate <-5.0, 0.0, -5.0>
}