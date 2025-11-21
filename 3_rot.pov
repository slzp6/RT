#version 3.7;
global_settings { charset utf8 }

camera {
  location <0, 15, -60>
  look_at  <0, 5, 0>
  angle 35
}

light_source { <0, 30, -30> color rgb <1,1,1> }

sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 color rgb <0.6,0.8,1.0>]
      [1.0 color rgb <1.0,1.0,1.0>]
    }
  }
}

plane {
  y, 0
  pigment { color rgb <0.9,0.9,0.9> }
  finish { ambient 0.2 diffuse 0.8 }
}

// •ú‘—‘åŠw‚Ì•¶š”z—ñ
#declare TextArray = array[4] {
  "\u653E", // •ú
  "\u9001", // ‘—
  "\u5927", // ‘å
  "\u5B66"  // Šw
}

// ¶‘¤FX¨Y¨Z ‚Ì‡˜‚Å‰ñ“]
#for (I,0,3)
  text {
    ttf "meiryo.ttc", TextArray[I], 0.3, 0
    pigment { color rgb <0.2+0.2*I, 0.3, 0.8-0.2*I> }
    scale <2,2,0.3>
    rotate <45,0,0>   // X²‰ñ“]
    rotate <0,90,0>   // Y²‰ñ“]
    rotate <0,0,30>   // Z²‰ñ“]
    translate <-15+I*3, 2, 0>
  }
#end

// ‰E‘¤FZ¨Y¨X ‚Ì‡˜‚Å‰ñ“]
#for (I,0,3)
  text {
    ttf "meiryo.ttc", TextArray[I], 0.3, 0
    pigment { color rgb <0.8-0.2*I, 0.3, 0.2+0.2*I> }
    scale <2,2,0.3>
    rotate <0,0,30>   // Z²‰ñ“]
    rotate <0,90,0>   // Y²‰ñ“]
    rotate <45,0,0>   // X²‰ñ“]
    translate <5+I*3, 2, 0>
  }
#end