// 2_texture_list1.pov

#include "colors.inc"  
#include "skies.inc"  
#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"
#include "glass.inc"
#include "metals.inc"
    
camera{ 
  location <0.0, 0.0, -9.0> 
  look_at  <0.0, 0.0, 0.0>
} 
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}      

     
background{ color White }        
      
// --------------------------
sphere {
  <-3.0, +3.0, 0>  0.45     
  texture {
    pigment { Jade } 
  }   
}   
text{
  ttf "timrom.ttf",         
  "Jade",       
  0.1, 0        
  pigment{color Blue}
  translate <-2.0, +3.0, 0>
}   


// --------------------------
sphere {
  <-3.0, +2.0, 0>  0.45     
  texture {
    pigment { Red_Marble } 
  }   
}       
text{
  ttf "Timrom.ttf",         
  "Red_Marble",       
  0.1, 0        
  pigment{color Blue}
  translate <-2.0, +2.0, 0>
}   


// --------------------------
sphere {
  <-3.0, +1.0, 0>  0.45     
  texture {
    pigment { Blood_Marble } 
  }   
} 
text{
  ttf "Timrom.ttf",         
  "Blood_Marble",       
  0.1, 0        
  pigment{color Blue}
  translate <-2.0, +1.0, 0>
}  


// --------------------------
sphere {
  <-3.0, +0.0, 0>  0.45     
  texture {
    pigment { Blue_Agate } 
  }   
}   
text{
  ttf "Timrom.ttf",         
  "Blue_Agate",       
  0.1, 0        
  pigment{color Blue}
  translate <-2.0, +0.0, 0>
}  


// --------------------------
sphere {
  <-3.0, -1.0, 0>  0.45     
  texture {
    pigment { Sapphire_Agate } 
  }   
}       
text{
  ttf "Timrom.ttf",         
  "Sapphire_Agate",       
  0.1, 0        
  pigment{color Blue}
  translate <-2.0, -1.0, 0>
}  


// --------------------------
sphere {
  <-3.0, -2.0, 0>  0.45     
  texture {
    pigment { Brown_Agate } 
  }   
}
text{
  ttf "Timrom.ttf",         
  "Brown_Agate",       
  0.1, 0        
  pigment{color Blue}
  translate <-2.0, -2.0, 0>
}         
       
// --------------------------             
sphere {
  <-3.0, -3.0, 0>  0.45     
  texture {
    pigment { Pink_Granite } 
  }   
}
text{
  ttf "Timrom.ttf",         
  "Pink_Granite",       
  0.1, 0        
  pigment{color Blue}
  translate <-2.0, -3.0, 0>
}  

