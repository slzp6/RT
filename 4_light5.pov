//  4_light5.pov  
#include "colors.inc"   


camera{ 
  location <0.0, 0.0, -20.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0, 7.0, 0.0> 
  color rgb <1.0, 1.0, 1.0>     
  looks_like {
    sphere{ <0,0,0>, 0.5
      pigment { Green }
    }
  }
} 

sphere { 
  <0.0, 0.0 ,0.0>, 3.0  
  pigment { Red }
}       

plane {
  <0.0,1.0,0.0>, -3
  pigment { White }
}