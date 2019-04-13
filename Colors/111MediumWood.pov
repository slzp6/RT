//
// [MediumWood]
//

#include "colors.inc"

background {White}
camera {
  location <0.0, 0.0, -4.0>
  look_at <0.0, 0.0, 0.0>
}

light_source {
  <0.0, 0.0, -10.0>
  color rgb<1.0, 1.0, 1.0>
}

object {
sphere{ <0,0,0>, 1.00}
texture { pigment {MediumWood} }
}
object {
cylinder{ <0.0,-1.0,0.0>,<0.0,1.0,0.0>,0.50}
texture { pigment {MediumWood} }
rotate<30,0,0>
translate <-1.5, 0.0, 0.0>
}
object {
box{ <-0.5,-0.5,-0.5>,<0.5,0.5,0.5>}
texture { pigment {MediumWood} }
rotate<-45,0,0>
translate <+1.5, 0.0, 0.0>
}
