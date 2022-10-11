//  2_cone2.pov
  
camera{ 
  location <0.0, 0.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <1.0,2.0,-3.0> 
  color rgb <1.0, 1.0, 1.0> 
} 
     
light_source { 
  <-1.0,2.0,-3.0> 
  color rgb <1.0, 1.0, 1.0> 
} 
     
     
cone {  
  <2, 3, 5>, 0.0   
  <2, 0, 0>, 1.0           
  pigment {color rgb <0.0, 1.0, 0.0>}
}    

cone {  
  <-2, 3, 5>, 0.0   
  <-2, 0, 0>, 1.0  
  open          
  pigment {color rgb <0.0, 1.0, 0.0>}
}




