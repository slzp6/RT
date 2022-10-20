// 4_example.pov    

#include "colors.inc"  
#include "skies.inc"
#include "shapes.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"
#include "glass.inc"
#include "metals.inc"


camera {
  location  <0.0, 1.0, -5.0>
  look_at   <0.0, 0.5,  0.0> 
  right x*image_width/image_height
}

light_source {
  <150, 150, -150>
  White
}         


sky_sphere{
 S_Cloud2
}     
 
  
plane { <0, 1, 0>, -1
  pigment {
    checker color White, color DarkOliveGreen , scale 3.0
  }
}

                                             
sphere {
  <0, -0.5, 0>  0.5     
  texture { Cherry_Wood }     
}               



sphere {
  <2.0, 2.0, 10>  3.5   
  texture { Vicks_Bottle_Glass }
}



#declare MyObj =
  union {
    sphere { <0, 0, 0>, 0.5    
      texture { Jade }    
      translate <0, 1, 0>
    }
    cone { 
      <0, -1.0, 0>, 0.3,
      <0, 1, 0>, 0 
      pigment { Brown }
    }
  }

object { MyObj translate < 0.0, 0, 3.0> }  
object { MyObj translate <-2.2, 0, 3.0> }
object { MyObj translate < 2.2, 0, 3.0> }  

object { MyObj translate < 0.0, 0, 6.0> } 
object { MyObj translate <-2.2, 0, 6.0> }
object { MyObj translate < 2.2, 0, 6.0> } 

