// 5_sphere_rainbow2.pov

#include "colors.inc"  
#include "skies.inc"  

#include "shapes.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"     
                         
                         
camera{ 
  location <0.0, 0.5, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}   

light_source { 
  <0.0, 0.0, 0.0> 
  color rgb <1.0, 1.0, 1.0>
}   

light_source { 
  <0.0, 1.0, 0.0> 
  color rgb <1.0, 1.0, 1.0>
  spotlight
  point_at<0.0, 0.0, 0.0>
  radius 3
  falloff 15
} 

sky_sphere {
  S_Cloud2
}       

plane {
  y, -2
  pigment { color rgb <0.8,0.6,0.4> } 
   normal{ agate clock*3.0 }
}      


rainbow {                      
   angle 40         
   width 7        
   distance 10000000
   direction <-0.3,-0.3,1.0>    
   jitter 0.01
   arc_angle 120    
   falloff_angle 30 
   color_map {
     [0.000 color rgbf <1.0, 0.5, 1.0, 1.0> transmit 0.90 ]
     [0.100 color rgbf <1.0, 0.5, 1.0, 0.8> transmit 0.90 ]
     [0.214 color rgbf <0.5, 0.5, 1.0, 0.8> transmit 0.90 ]
     [0.328 color rgbf <0.2, 0.2, 1.0, 0.8> transmit 0.90 ]
     [0.442 color rgbf <0.2, 1.0, 1.0, 0.8> transmit 0.90 ]
     [0.556 color rgbf <0.2, 1.0, 0.2, 0.8> transmit 0.90 ]
     [0.670 color rgbf <1.0, 1.0, 0.2, 0.8> transmit 0.90 ]
     [0.784 color rgbf <1.0, 0.5, 0.2, 0.8> transmit 0.90 ]
     [0.900 color rgbf <1.0, 0.2, 0.2, 0.8> transmit 0.90 ]
   }
}


sphere{<0.0, 0.0, 0.0> ,2.0
  texture { T_Winebottle_Glass }
  normal{ crackle ( 3.0 - clock*3.0) }
}      

         