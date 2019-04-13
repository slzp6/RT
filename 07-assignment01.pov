// 07-animation01.pov
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

background{color White}
camera {
  location <0, 0, -15>
  look_at <0, 0, 0>
}

light_source {
  <5,5,-10>
  color White
}   

sky_sphere {
  S_Cloud2
}
plane {
  y, -5
  pigment { color rgb <0.8,0.6,0.4> }
}  



cylinder {
  <0.0, 5.0, 0.0>, <0.0,-5.0, 0.0>, 0.5
  texture {T_Stone2}
  rotate <0,0,180*clock>
}       


cylinder {
  <5.0, 0.0, 0>, <-5.0, 0.0, 0.0>, 0.5
  texture {T_Stone2}
  rotate <0.0, 0.0, 180*clock>
}


merge {
  cone{
    <0.5, 0.5,  0.5>, 1.1  
    <-1.5, -1.5, -1.5>, 1.5
    material { M_Green_Glass }
  }
  sphere{ <-1.0, -1.0, -1.0> 1.0
    material { M_Yellow_Glass }
  }
}   