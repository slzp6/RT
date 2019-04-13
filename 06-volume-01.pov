 // 06-volume-01.pov

 global_settings { assumed_gamma 2.2 } 
 
 #include "colors.inc"  
 #include "skies.inc"
 
 #declare T1= 
 texture{
   pigment{
     density_file df3 "06-volume-01.df3" interpolate 1
     color_map{[0.0 Red][1.0 White]}
   }
 }
 camera {
   location <+0.0, 0.0, -1.50>
 }
 
 sky_sphere {
  S_Cloud2
 }
 plane {
  y, -1.01
  pigment {checker White, Grey}
 }
 
 light_source { <300.0, 500.0, -500.0> color White} 
 light_source { <-50.0,  10.0, -500.0> color White} 
 
 object {
   #include "06-volume-01-mesh-01.inc" 
//   #include "06-volume-01-mesh-02.inc" 
//   #include "06-volume-01-mesh-03.inc" 
   scale 1.0000
   texture { T1 }
   translate <-0.50, -0.50, -0.50>
 	rotate <360*clock,360*clock+90,360*clock>
 }
 	
