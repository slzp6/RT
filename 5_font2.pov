// 5_font2.pov     

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

camera{ 
  location <0.0, 0.5, -3.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 
background{color White}      

plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Gray
    }
}

text{
  ttf "Arial.ttf",         
  "ABC",  
  1,
  0
  texture {Gold_Texture} 
  translate < -1.0, 0.0, 0.0>
} 
     

 