// 2_texture2.pov
#include "colors.inc"  
#include "skies.inc"  
#include "textures.inc"    
#include "woods.inc"
              
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
  <2, 2, 2>  1.0     
  texture { Rosewood }
}                  

cylinder { 
  <-1, -1, -1>, 
  <1, 1, 1>, 
  0.5 
  texture { Jade } 
} 