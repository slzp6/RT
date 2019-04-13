//
// [Red]
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
texture { pigment {Red} }
}
object {
cylinder{ <0.0,-1.0,0.0>,<0.0,1.0,0.0>,0.50}
texture { pigment {Red} }
rotate<30,0,0>
translate <-1.5, 0.0, 0.0>
}
object {
box{ <-0.5,-0.5,-0.5>,<0.5,0.5,0.5>}
texture { pigment {Red} }
rotate<-45,0,0>
translate <+1.5, 0.0, 0.0>
}
