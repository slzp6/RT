// 6_example.pov
// ---------------------------------             
//  
// Initial_Frame=0 Final_Frame=10
// 
// ---------------------------------      
               
#include "colors.inc"  
#include "skies.inc"  
#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc " 
#include "shapes.inc"



camera {
  location  <0.0, 0.0, -5.0>
  look_at   <0.0, 0.0,  0.0>  
  right x*image_width/image_height
}

light_source {
  <0, 0, -15>
  color rgb <1.0, 1.0, 1.0>
}  
     
          
sky_sphere{
 S_Cloud2
}     
  
plane { <0, 1, 0>, -1
  pigment {
    checker color White, color Blue
  }
}   
      
sphere{
  <0.0, 1.0,0> 0.2
  texture{Ruby_Glass}
  translate <-1.0+clock*2.0,-1.2,-3.0>   
}         
       
torus{
  2.0,
  0.02
  texture{Pine_Wood} 
                   
  #if (clock<=0.5)   
     rotate <0,180*clock,-30*clock>
     translate <0,0.5,0> 
  #else
    rotate <0,180*clock,-30*(1-clock)>
    translate <0,0.5,0>   
  #end
}    


union { 
  cone {
    <0.0, -2.0, 0>, 1.0    
    <0.0, 1.5,0>,0.1 
    texture{Rosewood}      
  }
  
  sphere{
    <0.0, 1.0,0> 0.6  
    scale <1+clock*0.5, 1, 1+clock*0.5>  
    texture{T_Copper_4A} 
  }
}