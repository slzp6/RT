// 5_sphere_rainbow1.pov

#include "colors.inc"  
#include "skies.inc"  

#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc "     



  
camera{ 
  location <0.0, 0.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}   

sky_sphere {
  S_Cloud2
}
plane {
  y, -2
  pigment { color rgb <0.8,0.6,0.4> }
}      



rainbow {                      
   angle 40         
   width 5        
   distance 1500
   direction <0.0,-0.4,1.0>    
   jitter 0.01
   arc_angle 180    
   falloff_angle 60 
   color_map {
     [0.000 color rgbf <1.0, 0.5, 1.0, 1.0> ]
     [0.100 color rgbf <1.0, 0.5, 1.0, 0.8> ]
     [0.214 color rgbf <0.5, 0.5, 1.0, 0.8> ]
     [0.328 color rgbf <0.2, 0.2, 1.0, 0.8> ]
     [0.442 color rgbf <0.2, 1.0, 1.0, 0.8> ]
     [0.556 color rgbf <0.2, 1.0, 0.2, 0.8> ]
     [0.670 color rgbf <1.0, 1.0, 0.2, 0.8> ]
     [0.784 color rgbf <1.0, 0.5, 0.2, 0.8> ]
     [0.900 color rgbf <1.0, 0.2, 0.2, 0.8> ]
   }
}

sphere{<0.0, 0.0, 0.0> ,2.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { I_Glass1 fade_color Col_Dark_Green } 
  }
}      

         