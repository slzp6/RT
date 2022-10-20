// 3_texture2.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"
            
              
camera{ 
  location <0.0, 1.0, -7.0> 
  look_at  <0.0, 0.0, 0.0>
  angle 50.0
  right x * image_width / image_height
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
      checker color White, color Gray
    }
}

        
sphere {
  <-2, 0, 0>  0.4     
  texture{T_Glass1}
}  

sphere {
  <-1, 0, 0>  0.4     
  texture{T_Glass2}
}

sphere {
  <0, 0, 0>  0.4     
  texture{T_Glass3}
}  

sphere {
  <+1, 0, 0>  0.4     
  texture{T_Glass4}
}  

sphere {
  <+2, 0, 0>  0.4     
  texture{T_Old_Glass}
}      

sphere {
  <-2, 1, 0>  0.4     
  texture{T_Winebottle_Glass}
}  

sphere {
  <-1, 1, 0>  0.4     
  texture{T_Beerbottle_Glass}
}

sphere {
  <0, 1, 0>  0.4     
  texture{T_Ruby_Glass}
}  

sphere {
  <+1, 1, 0>  0.4     
  texture{T_Vicksbottle_Glass}
}     

sphere {
  <+2, 1, 0>  0.4     
  texture{T_Orange_Glass}
}  

