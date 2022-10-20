// 5_height_field2bmp.pov
#include "colors.inc"
#include "skies.inc"          


camera{ 
  location <0.0, 0.0, -5.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <3.0,3.0,3.0> 
  color rgb <1.0, 1.0, 1.0>
} 

plane {
  <0,0,1>, 10
  pigment { 
    wrinkles
    color_map {
      [ 0 0.1*White]
      [ 1 White ] 
    }
  }
}