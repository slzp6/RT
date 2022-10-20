// 5_plane2.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"
              
camera{ 
  location <0.0, 1.0, -4.0> 
  look_at  <0.0, 0.0, 0.0>
}               

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

sky_sphere {
  S_Cloud2
}   

plane { <0, 1, 0>, -1
    pigment { color Gold }
    normal { wrinkles 5 scale 0.2 turbulence 0.05 }
}

     
sphere {
  <0, 0, 0>  1.0     
  pigment{ color Red }  
  rotate <0,-90,0>
}  