// 5_example2.pov 

#include "colors.inc"  
#include "skies.inc"
#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"
#include "glass.inc"
#include "metals.inc"


camera {
  location  <0.0, 1.0, -5.0>
  look_at   <0.0, 0.5,  0.0> 
  right x*image_width/image_height
}
           
           
light_source {
  <250, 250, -350>
  color rgb <1.0, 1.0, 1.0>
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
           
 
sky_sphere{
 S_Cloud2
}     
  
plane { <0, 1, 0>, -1
    pigment {
      checker color LightBlue, color LightSteelBlue
    }
}          
 
           
#declare MyObj =
  union {
    sphere { <0, 0, 0>, 0.5             
      translate <0, 1, 0>   
      texture { Jade } 
    }
    cone { 
      <0, -1.0, 0>, 0.3, 
      <0, 1, 0>, 0 
      texture { Dark_Wood }
    }
  }


object { MyObj translate < 0.0, 0, 6.0> } 
object { MyObj translate <-2.5, 0, 6.0> }
object { MyObj translate < 2.5, 0, 6.0> } 

                                             
sphere {
  <-2.0, 2.0, 10>  0.5     
  texture { Red_Marble }    
}   

sphere {
  <5.0, 5.0, 15>  2.5   
  texture { NBwinebottle }
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
  texture { Dark_Green_Glass } 
  translate < 1.0, -1.0, 0.0>
}