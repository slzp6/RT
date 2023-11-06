// 6_while_loop1a.pov
#include "colors.inc"   


camera {
  location  <0.0, 1.0, -20.0>
  look_at   <0.0, 0.0,  0.0>
}     

light_source {
  <150, 150, -100>
  color rgb 1.0
}

#declare s = seed(100);          
          
#declare Value = -10;
#while ( Value <= 10 )  

  sphere { 
    <0, 0, 0>, 0.5 
    pigment { Green }
    translate <Value, rand(s)*3,0 > 
  }   

  #declare Value = Value + 1;
#end
