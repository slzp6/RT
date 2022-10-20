// 6_animation3.pov

#include "colors.inc"        
#include "shapes.inc"    
#include "stones.inc"    
#include "glass.inc"
#include "textures.inc"  
                             
                             
background{color White}      

camera {
  angle    35
  location <3.0 , 0.0 ,-10.0>
  right    x*image_width/image_height
  look_at  <0.0 , 0.0, 0.0>
  rotate   <0,-360*(clock+0.10),0>      
}

light_source {
  <5,5,-10>
  color White
}
 
plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Blue
    }
}   

sphere {
  <+2, 0, 0>  0.4     
  material{M_Ruby_Glass}
} 

cylinder {
  <0, 1.0, 0>, <0,-1.0, 0>, 0.8
  pigment {color rgb<0.0, 1.0, clock> }
}