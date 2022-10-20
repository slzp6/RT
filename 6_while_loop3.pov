// 6_while_loop3.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"

background {color Gray}
              
camera{ 
  location <0.0, 0.0, -20.0> 
  look_at  <0.0, 0.0, 0.0>
}               

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}
   
      
#declare i=0;
#while(i<100)    

  sphere{
    <0.0,0.0,0.5>,0.2
    pigment{color Green}
    rotate<0,40*i,0>
    translate<0,0.2*i,0>
  }  

  #declare i=i+1; 
#end