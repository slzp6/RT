// 05-font01.pov

#include "colors.inc"
#include "shapes.inc"
 
camera{ 
  location <0.0, 1.0, -3.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 
background{color White}

text{
  ttf "Arial.ttf",         
  "ABC",       
  5,        
  0        
  pigment{color rgb<0.0,1.0,0.0>}
}

 