// 05-blob01.pov
#include "colors.inc"


background{White}
camera {
    location <0,0,-2>
    look_at <0,0,0>
}
light_source { <10, 10, -10> color White }
blob {
  threshold .65
  sphere { <.5,0,0>, 0.8, 1 pigment {Blue} }
  sphere { <-.5,0,0>,0.8, 1 pigment {Green} }
  finish { phong 1 }
}