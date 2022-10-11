// 5_sphere_fog2.pov

#include "colors.inc"  
#include "skies.inc"  

#include "shapes.inc"
#include "textures.inc"
#include "Woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc "

fog {
  fog_type 1               
  distance 20
  color Gray               
}
  
camera{ 
  location <0.0, 2.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 
    
light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}   

sky_sphere {
  S_Cloud2
}
plane {
  y, -2
  pigment { color rgb <0.8,0.6,0.4> }
}  


sphere{<0.0, 0.0, 0.0> ,1.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { I_Glass1 fade_color Col_Dark_Green } 
  }
}      

sphere{<2.0, 0.0, 2.0> ,1.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { I_Glass1 fade_color Col_Dark_Green } 
  }
}  

sphere{<4.0, 0.0, 4.0> ,1.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { I_Glass1 fade_color Col_Dark_Green } 
  }
}  

sphere{<6.0, 0.0, 6.0> ,1.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { I_Glass1 fade_color Col_Dark_Green } 
  }
}     

sphere{<8.0, 0.0, 8.0> ,1.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { I_Glass1 fade_color Col_Dark_Green } 
  }
}     

sphere{<10.0, 0.0, 10.0> ,1.0
  material { 
    texture { 
      pigment { color Clear } 
      finish { F_Glass1 } 
    } 
    interior { I_Glass1 fade_color Col_Dark_Green } 
  }
}                    