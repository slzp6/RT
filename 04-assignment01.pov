// 04-object-01.pov
#include "colors.inc"  
#include "skies.inc"
#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"
#include "glass.inc"
#include "metals.inc"

sky_sphere{
 S_Cloud2
}     
  
plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Blue
    }
}
camera {
  location  <0.0, 1.0, -5.0>
  look_at   <0.0, 0.5,  0.0>
}

light_source {
  <150, 150, -150>
  color rgb 1.0
}

#declare MyObj =
  union {
    object {
      sphere { <0, 0, 0>, 0.5 }   
      texture {
        pigment { Jade } 
      }   
      translate <0, 1, 0>
    }
    object {
      cone { <0, -1.0, 0>, 0.3, <0, 1, 0>, 0 }
      pigment { Brown }
    }
  }

object { MyObj translate < 0.0, 0, 3.0> }  
object { MyObj translate <-2.2, 0, 3.0> }
object { MyObj translate < 2.2, 0, 3.0> }  

object { MyObj translate < 0.0, 0, 6.0> } 
object { MyObj translate <-2.2, 0, 6.0> }
object { MyObj translate < 2.2, 0, 6.0> } 

                                             
sphere {
  <0, -0.5, 0>  0.5     
  texture {
    pigment { Red_Marble } 
    finish { Shiny }
    scale 0.5
  }   
}   

sphere {
  <2.0, 2.0, 10>  3.5   
  material{M_Glass}
}