// 6_while_loop4.pov
#include "colors.inc"
#include "skies.inc" 


camera {
  location  <0.0, 5.0, -15.0>
  look_at   <0.0, 0.0,  0.0>
}     

light_source {
  <0, 150, 0>
  color rgb 1.0
}                      

sky_sphere {
  S_Cloud1
}     

plane {
  y, -1.0
  pigment {Gold}    
}


#declare sa = seed(100);  
#declare sb = seed(101);       
          
#declare Value = -10;
#while ( Value <= 10 )  

  sphere { 
    <0, 0, 0>, 0.5 
    pigment { Green }
    translate <Value, rand(sa)*3.0, rand(sb)*5.0 > 
  }   

  #declare Value = Value + 1;
#end
