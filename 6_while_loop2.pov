// 6_while_loop2.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc "       

background {color Gray}
              
camera{ 
  location <0.0, -10.0, -25.0> 
  look_at  <0.0, 0.0, 0.0>
}               

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}
   
      
#declare i=-10;
#while(i<10)
  #declare j=-10;
  #while(j<10)
    object {
      sphere{<0.0,0.0,0.5>,0.3}
      pigment{color Green}
      translate<i,j,0>
    }
    #declare j=j+1;
    #end  
  #declare i=i+1; 
#end