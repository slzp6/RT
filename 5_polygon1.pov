// 5_polygon1.pov
#include "colors.inc"  
#include "skies.inc"  
   

camera {
  location <0, 0, 10>
  look_at <0.4, 0.5, -3.0>
}

light_source { 
 <5, 5, 5> color rgb <1.0, 1.0, 1.0> 
}

plane { <0, 1, 0>, -3
    pigment { color rgb <0.8, 0.9, 0.8> }
}

sky_sphere {
  S_Cloud2
}


triangle { 
  <-0.5, -0.5, -0.5>, 
  < 2.0,  2.0,  2.0> ,
  < 2.0, -2.0, -2.0> 
	
  pigment { color rgb <0, 1, 0.3> }
  finish { ambient 0.5 diffuse 0.8 specular 0.8 roughness 0.01 }
}

