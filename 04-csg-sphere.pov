// 04-csg-sphere.pov

#include "colors.inc"  
#include "skies.inc"  

#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc "
  
camera{ 
  location <0.0, 2.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}   

sky_sphere {
  S_Cloud2
}
plane {
  y, -2
  pigment { color rgb <0.8,0.6,0.4> }
}  


  sphere{1,1.5
    material { 
      texture { 
        pigment { color Clear } 
        finish { F_Glass1 } 
      } 
      interior { I_Glass1 fade_color Col_Dark_Green } 
    }
  }
        
