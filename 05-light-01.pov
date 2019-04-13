// 05-light-01.pov
#include "colors.inc"
#include "skies.inc" 
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
  pigment {checker Green, White}    
}
  sphere {
     <0,0,0>, 1
     pigment { BrightGold }
     finish {
        ambient 0.1
        diffuse 0.1
        specular 1.0
        roughness 0.001
        reflection {
           0.75
        }
     }
   }