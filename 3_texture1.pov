// 3_texture1.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"

#include "textures.inc"
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"
              
camera{ 
  location <0.0, 1.0, -4.0> 
  look_at  <0.0, 0.0, 0.0>
} 
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 
sky_sphere {
  S_Cloud2
}   

plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Blue
    }
}

                   

sphere {
  <-2, 0, 0>  0.4      
  texture {T_Brass_1A}
}  
sphere {
  <-1, 0, 0>  0.4     
   texture {T_Copper_1A}
}
sphere {
  <0, 0, 0>  0.4     
   texture {T_Chrome_1A}
}  
sphere {
  <+1, 0, 0>  0.4     
  texture {T_Silver_1A}
}  
sphere {
  <+2, 0, 0>  0.4     
  texture {T_Gold_1A}
}      

