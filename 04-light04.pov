//  04-light04.pov
camera{ 
  location <0.0, -20.0, 0.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <0.0,-20.0,-20.0> 
  color rgb <1.0, 1.0, 1.0>
  area_light
  <1,0,0>, <0,1,0>
  30,30
} 

sphere { 
  <0.0, 0.0 ,0.0>, 3.0  
  pigment { rgb <1.0, 0.0, 0.0> }
}       

plane {
  <0.0,0.0,1.0>, 10
  pigment {  rgb <1.0, 1.0, 1.0> }
}