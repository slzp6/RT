// 5_font4.pov     

#version 3.7;          

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

global_settings {
  charset utf8
}

camera {
  location <0, 2, -5>
  look_at  <0, 1, 0>
}

light_source {
  <0, 10, -10>
  color rgb <1, 1, 1>
}

background { color rgb <1, 1, 1> }     


plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Gray
    }
}
           
// saba, katsuo, buri
text {  
  ttf "meiryo.ttc", "\u9BD6\u9C39\u9C24", 0.3, 0
  texture { Jade }
  finish { phong 0.9 }
  scale <1.5, 1.5, 0.3>
  translate <-1.5, 0, 0>
}
                