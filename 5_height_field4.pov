// 5_height_field4.pov

#include "colors.inc"
#include "skies.inc"        
#include "textures.inc"
         
         
camera{ 
  location <0.0, 6.0, -20.0> 
  look_at  <0.0, 0.0, 0.0>   
  angle 45.0
  right x * image_width / image_height
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}       

sky_sphere {
  S_Cloud2
}

height_field {
  jpeg "5_opensimplex_a.jpg"
  // jpeg "5_opensimplex_b.jpg"
  // jpeg "5_opensimplex_c.jpg"
  smooth
  
  texture {NBwinebottle}    
  // texture {Rust}
  
  translate <-0.5, -1.0, -0.5>
  scale <100, 5.0, 100>
}