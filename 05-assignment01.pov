// 04-object-01.pov
#include "colors.inc"  
#include "skies.inc"
#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"
#include "glass.inc"
#include "metals.inc"

sky_sphere{
 S_Cloud5
}     
  
plane { <0, 1, 0>, -1
    pigment {
      checker color Bronze, color Coral
    }
}
camera {
  location  <0.0, 1.0, -5.0>
  look_at   <0.0, 0.5,  0.0>
}

light_source {
  <250, 250, -350>
  color rgb 1.0
}  

light_source { 
  <0.0, 15.0, 0.0> 
  color rgb <0.0, 1.0, 0.0>
  spotlight
  point_at<-1.0, 0.0, 0.0>
  radius 3
  falloff 5
} 

light_source { 
  <0.0, 15.0, 0.0> 
  color rgb <1.0, 0.0, 0.0>
  spotlight
  point_at<2.0, 0.0, 0.0>
  radius 3
  falloff 5
}             

#declare MyObj =
  union {
    object {
      sphere { <0, 0, 0>, 0.5 }   
      texture {
        pigment { Jade } 
      }   
      translate <0, 1, 0>
    }
    object {
      cone { <0, -1.0, 0>, 0.3, <0, 1, 0>, 0 }
      pigment { Brown }
    }
  }


object { MyObj translate < 0.0, 0, 6.0> } 
object { MyObj translate <-2.5, 0, 6.0> }
object { MyObj translate < 2.5, 0, 6.0> } 

                                             
sphere {
  <-2.0, 2.0, 10>  0.5     
  texture {
    pigment { Red_Marble } 
    finish { Shiny }
    scale 0.5
  }   
}   

sphere {
  <5.0, 5.0, 15>  2.5   
  material{M_Orange_Glass}
}

text{
  ttf "Arial.ttf",         
  "ABC",       
  1,        
  0         
   texture {Gold_Texture} 
   translate < -2.0, -1.0, 0.0>
} 

text{
  ttf "Arial.ttf",         
  "OUJ",       
  0.5,        
  0        
  material{M_Ruby_Glass}  
  translate < 1.0, -1.0, 0.0>
}