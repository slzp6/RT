// 3_material4.pov

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


sphere{ 
  <0.0,0.0,0.0> 1.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { 
      I_Glass1 
      fade_color Col_Amber_01
    } 
  }
}
