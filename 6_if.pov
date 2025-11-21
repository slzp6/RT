#version 3.7;
global_settings { charset utf8 }

#include "rand.inc"
#declare SEED = seed(20251121);

// カメラ：やや上から俯瞰
camera {
  location <0, 50, -120>
  look_at  <0, 20, 0>
  angle 35
}

// 光源
light_source {
  <0, 100, -100>
  color rgb <1, 1, 1>
}

// 空（グラデーション空色）
sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 color rgb <0.6, 0.8, 1.0>]
      [1.0 color rgb <1.0, 1.0, 1.0>]
    }
    scale 2
  }
}

// 地面（無限平面）
plane {
  y, 0
  pigment { color rgb <0.9, 0.9, 0.9> }
  finish { ambient 0.2 diffuse 0.8 }
}

// 100個の球をランダムに配置・条件分岐で色を変える
#for (I, 0, 99)
  #declare Value = rand(SEED);  // 0〜1 の乱数

  // 条件分岐で色を決定
  #if (Value < 0.33)
    #declare Col = <1, 0.3, 0.3>;  // 赤系
  #else
    #if (Value < 0.66)
      #declare Col = <0.3, 1, 0.3>;  // 緑系
    #else
      #declare Col = <0.3, 0.3, 1>;  // 青系
    #end
  #end

  // ランダムな位置
  #declare X = rand(SEED)*80 - 40;
  #declare Y = rand(SEED)*30 + 1;  // 地面より少し上
  #declare Z = rand(SEED)*60 - 30;

  // ランダムなサイズ（0.5〜1.5）
  #declare R = 0.5 + rand(SEED);

  sphere {
    <X, Y, Z>, R
    pigment { color rgb Col }
    finish { phong 0.8 }
  }
#end