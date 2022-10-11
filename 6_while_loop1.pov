// 6_while_loop1.pov
#include "colors.inc"
camera {
  location  <0.0, 1.0, -5.0>
  look_at   <0.0, 0.0,  0.0>
}     

light_source {
  <150, 150, -100>
  color rgb 1.0
}

#declare Value = -2;
#while ( Value <= 2 )
  object {
    sphere { <0, 0, 0>, 0.5 }
    pigment { Blue }
    translate <Value, 0, 0>
  }
  #declare Value = Value + 1;
#end
