// 5_example.pov 

#include "colors.inc"  
#include "skies.inc"
#include "shapes.inc"
#include "textures.inc"
#include "woods.inc"
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
            

sphere {
  <5.0, 5.0, 15>  2.5   
  texture { NBwinebottle }
}

text{  
  ttf "timrom.ttf", 
  // ttf "arial.ttf",         
  "ABC",       
  1,        
  0         
   texture {Gold_Texture} 
   translate < -2.0, -1.0, 0.0>
} 

text{
  ttf "timrom.ttf", 
  // ttf "arial.ttf",         
  "OUJ",       
  0.5,        
  0        
  texture { Dark_Green_Glass } 
  translate < 1.0, -1.0, 0.0>
}