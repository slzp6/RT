//  01_example.pov
  
camera{ 
  location <0.0, 0.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>  
  right x * image_width / image_height 
} 

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

 
sphere { 
  <0.0, 0.0 ,0.0>, 0.5 
  pigment { rgb <1.0, 0.0, 0.0> }
}
                       
                         
sphere { 
  <-2.0, 0.0 ,0.0>, 1.0 
  pigment { rgb <1.0, 1.0, 0.0> }
}


sphere { 
  <2.0, 2.0 ,0.0>, 1.0 
  pigment { rgb <1.0, 1.0, 1.0> }
}