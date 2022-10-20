// 5_bump2.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"
              
camera{ 
  location <0.0, 1.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
}               

light_source { 
  <0.0,3.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

sky_sphere {
  S_Cloud2
}   

plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Gray
    }
}

     
sphere {
  <-4, 0, 0>  1.0     
  pigment{ color Cyan }
  normal{ agate 2.0 }
}     

sphere {
  <-1.5, 0, 0>  1.0     
  pigment{ color Cyan }
  normal{ crackle 2.0 }
}  

sphere {
  <1.5, 0, 0>  1.0     
  pigment{ color Cyan }
  normal{ granite 2.0 }
}             

sphere {
  <4, 0, 0>  1.0     
  pigment{ color Cyan }
  normal{ quilted 2.0 }
}  