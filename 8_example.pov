// 8_example.pov 

#include "colors.inc"  
#include "skies.inc"  
#include "stones.inc"
#include "textures.inc"  
#include "metals.inc"
#include "glass.inc"
#include "woods.inc"
     
camera {
  location  <0.0, 0.0, -10.0>
  look_at   <0.0, 0.5,  0.0> 
  right x*image_width/image_height
}

light_source {
  <150, 150, -150>
  color rgb 1.0
}                   
     
     
sky_sphere{
 S_Cloud2
}     
      

plane { <0, 1, 0>, -1
    pigment { color SeaGreen }
    normal { wrinkles 3 scale 0.7 turbulence 0.5 }
} 


       
sphere { <0.0, 0.0, 0.0>, 0.5
  texture{ T_Copper_5A }    
  scale  <2.0, 1.0, 2.0>
}


text{
  ttf "Arial.ttf",         
  "OUJ", 0.1, 0.0     
  texture{ NBbeerbottle } 
  scale <5.0, 5.0, 5.0>
  translate<-5.0, 0.0, 5.0>       
}     


#declare myobj =
  difference {
    sphere {<0.0, 0.0, 0.0>, 1.0}
    sphere {<0.5, 0.5, -0.5>, 0.5}
  }

object { myobj 
  rotate <-45.0, 0.0, 0.0>  
  translate<3.0, 0.0, 0.0> 
  texture { Brown_Agate }
}

object { myobj 
  rotate <-45.0, 0.0, 0.0> 
  translate<-3.0, 0.0, 0.0>
  texture { Rusty_Iron }
}
