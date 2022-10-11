// 05-light-ambient.pov
#include "colors.inc"
#include "skies.inc" 
sky_sphere {
  S_Cloud2
}
camera{ 
  location <0.0, 0.0, -12.0> 
  look_at  <0.0, 0.0, 0.0>
} 
light_source { 
  <0.0,3.0,-3.0> 
  color rgb <1.0, 1.0, 1.0>
} 
plane {
  y, -1.0
  pigment {checker Green, White}    
}
sphere {
  <-6,0,0>, 1
  pigment { Blue }
  finish {
    ambient 1.0
  }
}   
sphere {
  <-3,0,0>, 1
  pigment { Blue }
  finish {
    ambient 0.8
  }
}
sphere {
  <0,0,0>, 1
  pigment { Blue }
  finish {
    ambient 0.6
  }
}   
sphere {
  <3,0,0>, 1
  pigment { Blue }
  finish {
    ambient 0.4
  }
}
sphere {
  <6,0,0>, 1
  pigment { Blue }
  finish {
    ambient 0.2
  }
}