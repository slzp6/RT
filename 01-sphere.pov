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
              

// create a sphere shape
sphere {
  <0, 1, 0> // center of sphere <X Y Z>
  0.5       // radius of sphere
  // scale <1,2,1> // <= Note: Spheres can become ellipses by uneven scaling    
  pigment {color Green}

}
