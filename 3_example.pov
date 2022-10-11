// 3_example.pov

#include "colors.inc"  
#include "skies.inc"  
#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc "
  
camera{ 
  location <0.0, 2.0, -12.0> 
  look_at  <0.0, 0.0, 0.0>  
  right x * image_width / image_height
}                           

    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}   


sky_sphere {
  S_Cloud2
}        


plane {
  y, -1
  pigment { color rgb <0.8,0.6,0.4> }
}  
         
         
sphere { <0, 0, 0>, 0.5
  texture { Pine_Wood }   
}
         
         
sphere { <6, 0, 0>, 0.8
  texture { T_Copper_3A }   
}
          
          
          
sphere { <0, 0, 0>, 1
  texture { Dark_Green_Glass }    
  scale  <1.2, 1.2, 1.2> 
  translate <3,0,0> 
}


 

