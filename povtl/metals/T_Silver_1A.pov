// "povtl v1.0.0"
// "(2020-06-11 12:25:22.871641)"
// "T_Silver_1A"


#version 3.7;
global_settings {assumed_gamma 1.00}

#include "colors.inc"
#include "textures.inc"
#include "stones.inc"
#include "woods.inc"
#include "metals.inc"

camera {
  location<0.0, 0.0, -4.1>
  look_at <0.0 ,0.0 , 0.0>
  angle 45.0
  right x * image_width / image_height 
}

light_source {
  <1.5, 1.5, -3.0>
  color rgb <1.0, 1.0, 1.0>*2.0
}

#declare myobj =
  difference {
    sphere {<0.0, 0.0, 0.0>, 1.0}
    sphere {<0.5, 0.5, -0.5>, 0.5}
  }

object { myobj 
  rotate <-45.0, 0.0, 0.0> 
  texture { T_Silver_1A }
}

background{White}

// EOF