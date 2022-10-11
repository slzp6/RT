//  1_sphere4.pov
  
camera{ 
  location <0.0, 0.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0,3.0,-3.0> 
  color rgb <1.0, 1.0, 1.0>*5
} 

sphere { 
  <0.0, 0.0 ,0.0>, 2.0 
  pigment { rgbt <1.0, 0.0, 0.0, 0.7> }
}    

sphere { 
  <-3.0, 0.0 ,0.0>, 2.0  
  pigment { rgbt <0.0, 1.0, 0.0, 0.7> }
} 

sphere { 
  <3.0, 0.0 ,0.0>, 2.0  
  pigment { rgbt <0.0, 0.0, 1.0, 0.7> }
} 