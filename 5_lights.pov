// 5_lights.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc "
              
camera{ 
  location <0.0, 0.0, -4.0> 
  look_at  <0.0, 0.0, 0.0>
}               

light_source {  
  <-1.0,5.0,0.0> 
  color Blue  
  spotlight 
  point_at<-1.0, 0.0, 0.0>       
  radius 3
  falloff 10
} 
          
  
light_source {  
  <1.0,5.0,0.0> 
  color Green  
  spotlight 
  point_at<1.0, 0.0, 0.0>       
  radius 3
  falloff 10
}       
           
           
sky_sphere {
  S_Cloud3
}   

plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Gray
    }
}
       
       
       
sphere {
  <0, 0, 0>  0.3     
  texture { Silver3 }
}         
       
     
sphere {
  <0, 0, 0>  0.5     
  texture { Green_Glass }
  normal{ agate 3.0 } 
  translate <-1.0, 0.0, 0.0>
}      


sphere {
  <0, 0, 0>  0.5     
  texture { Green_Glass }
  normal{ agate 3.0 } 
  translate <1.0, 0.0, 0.0>
}  