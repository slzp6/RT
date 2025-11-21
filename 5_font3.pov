// 5_font3.pov     

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
           

text {
  ttf "meiryo.ttc", "\u5927", 0.3, 0
  texture { Jade }
  finish { phong 0.9 }
  scale <1.5, 1.5, 0.3>
  translate <-1.5, 0, 0>
}
    
           
text {
  ttf "meiryo.ttc", "\u5B66", 0.3, 0
  pigment { color rgb <0.2, 0.2, 0.8> }
  finish { phong 0.9 }
  scale <1.5, 1.5, 0.3>
  translate <0, 0, 0>
}     


                    
 


/*        

# python 
  
char = "Šw"
codepoint = hex(ord(char))  # '0x5b66'
print(f"U+{codepoint[2:].upper()}") 
                   
*/                    