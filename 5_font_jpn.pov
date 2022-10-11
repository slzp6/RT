// 5_font_jpn.pov

#include "colors.inc"
#include "textures.inc"
#include "skies.inc"

global_settings{charset utf8}

camera{ 
  location <0.0, 0.5, -3.5> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

sky_sphere {
  S_Cloud3
}   

plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Gray
    }
}

text{
  // ttf	"msmincho.ttc",		
  ttf "msgothic.ttc",  
  "放送大学",       
  0.3,        
  0                      
  texture{NBwinebottle}    
  translate <-2,0,0>
}

 