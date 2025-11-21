#version 3.7;
global_settings { assumed_gamma 1.0 }

#include "rand.inc"
#declare SEED = seed(42);

// カメラ：やや斜め上から俯瞰
camera {
  location <0, 5, -15>
  look_at  <0, 0, 0>
  angle 35
}

// 光源：上空から白色光
light_source {
  <0, 20, -20>
  color rgb <1, 1, 1>
}

// 空（背景）
sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 color rgb <0.6, 0.8, 1.0>]  // 上空
      [1.0 color rgb <1.0, 1.0, 1.0>]  // 地平線
    }
    scale 2
  }
}

// 関数定義：座標に応じて数値を返す
#declare ColorFn = function { abs(sin(x*3 + z*3)) }

// 地面（無限平面）に関数で色を付与
plane {
  y, 0
  pigment {
    function { ColorFn(x,y,z) }
    color_map {
      [0.0 color rgb <0.2, 0.2, 1.0>]  // 青系
      [1.0 color rgb <1.0, 0.2, 0.2>]  // 赤系
    }
  }
  finish { ambient 0.2 diffuse 0.8 }
}

// 物体：球体を配置
sphere {
  <0, 1, 0>, 1
  pigment { color rgb <0.8, 0.2, 0.2> }  // 赤系
  finish { phong 0.8 reflection 0.1 }
}