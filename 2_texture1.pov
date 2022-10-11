// 2_texture1.pov     

#include "colors.inc"  
#include "skies.inc"  
#include "textures.inc"
              
camera{ 
  location <0.0, 0.0, -5.0> 
  look_at  <0.0, 0.0, 0.0>
}           

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

sky_sphere {
  S_Cloud1
}

plane {
  y, -1
  pigment { color rgb <0.7,0.5,0.3> }
}         

sphere {
  <0, 0, 0>  1.0     
  texture { Red_Marble }
}