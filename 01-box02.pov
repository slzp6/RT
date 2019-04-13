// Standard pre-defined colors
//
#include "colors.inc"
                          
                          
// perspective (default) camera
camera {
  location  <0.0, 2.0, -5.0>
  look_at   <0.0, 0.0,  0.0>
  right     x*image_width/image_height
}
       
// An area light (creates soft shadows)
// WARNING: This special light can significantly slow down rendering times!
light_source {
  0*x                 // light's position (translated below)
  color rgb 1.0       // light's color
  area_light
  <8, 0, 0> <0, 0, 8> // lights spread out across this distance (x * z)
  4, 4                // total number of lights in grid (4x*4z = 16 lights)
  adaptive 0          // 0,1,2,3...
  jitter              // adds random softening of light
  circular            // make the shape of the light circular
  orient              // orient light
  translate <40, 80, -40>   // <x y z> position of light
}
   
              
   
// create a 3-D slice of a 4-D julia fractal object
julia_fractal {
  <-0.083,0.0,-0.83,-0.025>
  quaternion // hypercomplex
  cube // TYPE: sqr | cube | exp | reciprocal | sin | asin | sinh | asinh | cos | acos |
       //       cosh | acosh | tan | atan | tanh | atanh | log | pwr( X_Val, Y_Val )
  max_iteration 8
  precision 20
  
  pigment {color Green}

 }

