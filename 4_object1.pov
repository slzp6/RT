// 4_object1.pov
#include "colors.inc"  
#include "skies.inc"
     
sky_sphere{
 S_Cloud2
}     
plane {
  y, -1
  pigment { color rgb <0.8,0.6,0.4> }
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
    sphere { <0, 0, 0>, 0.5 
      pigment { Blue }
      translate <0, 1, 0>
    }

    cone { <0, -0.5, 0>, 0.5, <0, 1, 0>, 0 
      pigment { Green }
    }
  }
    
    
    
object { MyObj }  
object { MyObj translate <-1.2, 0, 0> }
object { MyObj translate < 1.2, 0, 0> }