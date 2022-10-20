// 5_camera_perspective.pov
#include "colors.inc"
#include "skies.inc" 
          
          
sky_sphere {
  S_Cloud2
}

camera{    
  location <0.0, 1.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>    
  angle 45
  right x*image_width/image_height
} 

light_source { 
  <0.0,3.0,-3.0> 
  color rgb <1.0, 1.0, 1.0>
} 

plane {
  y, -1.0
  pigment {checker Blue,Cyan}    
}
  
  
sphere {
  <0,0,0>, 1
  pigment { Gold }
  finish {
    ambient 0.1
    diffuse 0.1
    specular 0.5
    roughness 0.001
    reflection {
      0.75
    }
  }
}