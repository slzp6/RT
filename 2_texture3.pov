// 2_texture3.pov
#include "colors.inc"  
#include "skies.inc"  
#include "textures.inc"
              
camera{ 
  location <0.0, 0.0, -4.0> 
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
  pigment { color rgb <0.7,0.5,0.3> }
}         
sphere {
  <-2, 0, 0>  0.4     
  texture {
    Red_Marble 
    finish { Shiny }
    scale 1.0
  }   
}
sphere {
  <-1, 0, 0>  0.4     
  texture {
     Red_Marble 
    finish { Shiny }
    scale 0.75
  }   
}
sphere {
  <0, 0, 0>  0.4     
  texture {
     Red_Marble  
    finish { Shiny }
    scale 0.50
  }   
}
sphere {
  <1, 0, 0>  0.4     
  texture {
     Red_Marble  
    finish { Shiny }
    scale 0.25
  }   
}
sphere {
  <2, 0, 0>  0.4     
  texture {
    Red_Marble  
    finish { Shiny }
    scale 0.01
  }   
}