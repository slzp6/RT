// 07-animation4.pov

#include "colors.inc"        
#include "shapes.inc"    
#include "stones.inc"    
#include "glass.inc"
#include "textures.inc"  

#macro  Bounce( X )
 #if(X<1/2) (sin(pi*( X + 1/2)))
 #else      (sin(pi*(1-X + 1/2)))
 #end
#end 
#declare Time = clock +0.00  ;

background{color White}
  
camera {
  location <0, 0, -6>
  look_at <0, 0, 0>
}

light_source {
  <5,5,-10>
  color White
}
 
plane { <0, 1, 0>, -0.5
    pigment {
      checker color White, color Blue
    }
} 

sphere{ <0,0,0>,0.5
  texture{
    pigment{ color rgb<0.5,0.5,0.0>}
    finish{ phong 1 }
    }
  translate
  <0.0, Bounce(Time)*(2.0),0.0>
}