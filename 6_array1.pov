// 6_array1.pov

#version 3.7;
global_settings { charset utf8 }

#include "colors.inc"
#include "rand.inc"
#declare SEED = seed(20251121);

// カメラと光源
camera {
  location <0, 10, -50>
  look_at  <0, 0, 0>
}
light_source {
  <0, 100, -100>
  color rgb <1, 1, 1>
}
background { color rgb <1, 1, 1> }

plane { <0, 1, 0>, -1
    pigment {
      checker color White, color Gray
    }
}

// 放送大学の文字を \uXXXX 形式で直接配列に格納
#declare TextArray = array[4] {
  "\u653E",  // 放
  "\u9001",  // 送
  "\u5927",  // 大
  "\u5B66"   // 学
}

// 100個のランダムな文字をランダムな位置・大きさ・色で表示
#for (I, 0, 99)
  #declare IDX = int(rand(SEED) * 4);
  #declare X = rand(SEED)*80 - 40;
  #declare Y = rand(SEED)*40;
  #declare Z = rand(SEED)*60 - 30;
  #declare S = 1.8 + rand(SEED)*3.5;  // 大きさ：1.8〜3.5倍

  // ランダムな色（明度を保ちつつ）
  #declare R = 0.3 + rand(SEED)*0.7;
  #declare G = 0.3 + rand(SEED)*0.7;
  #declare B = 0.3 + rand(SEED)*0.7;

  text {
    ttf "meiryo.ttc", TextArray[IDX], 0.3, 0
    pigment { color rgb <R, G, B> }
    finish { phong 0.9 }
    scale <S, S, 0.3>
    translate <X, Y, Z>
  }
#end