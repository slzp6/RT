// 3_sphere1.pov
#include "colors.inc"  
#include "skies.inc"  
  
camera{ 
  location <0.0, 2.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
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
  
sphere { <0, 0, 0>, 1
  pigment { Red }
}            

sphere { <0, 0, 0>, 1
  pigment { Green }
  translate <3,0,0>
}


 

