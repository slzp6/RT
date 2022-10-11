//  2_cone1.pov
  
camera{ 
  location <0.0, 0.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

cone {  
  <0, 3, 0>, 0.0   
  <0, 0, 0>, 1.0  
  open          
  pigment {color rgb <0.0, 1.0, 0.0>}
}




