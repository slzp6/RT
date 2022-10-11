// 4_csg_sample2.pov

#include "colors.inc"  
#include "skies.inc"  
#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc "
  
camera{ 
  location <0.0, 2.0, -11.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <0.0,5.0,-3.0> 
  color rgb <1.0, 1.0, 1.0> *3.0
}   

sky_sphere {
  S_Cloud2
}
plane {
  y, -2.5
  pigment { color rgb <0.8,0.6,0.4> }
}  

merge {  
  sphere{ <3.0, 1.0, 1.0> 1.5
    texture{Orange_Glass}
  }
  cone{
    <0.5, -1.5,  -1.5>, 1.5  
    <3.5, 1.5, 1.5>, 0.1
    texture{Dark_Green_Glass}
  }
 
}       
   
   
union {  
  sphere{ <-1.0, 1.0, 1.0> 1.5
    texture{Orange_Glass}
  }
  cone{
    <-3.5, -1.5,  -1.5>, 1.5  
    <-0.5, 1.5, 1.5>, 0.1
    texture{Dark_Green_Glass}
  }
 
}       