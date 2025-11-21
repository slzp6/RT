#version 3.7;
global_settings { charset utf8 }

camera {
  location <0, 10, -40>
  look_at  <0, 5, 0>
  angle 35
}

light_source { <0, 20, -20> color rgb <1,1,1> }

plane {
  y, 0
  pigment { color rgb <0.9,0.9,0.9> }
  finish { ambient 0.2 diffuse 0.8 }
}

// 放送大学の文字
#declare Text = "放送大学";

// --- 通常の rotate 指定 ---
text {
  ttf "meiryo.ttc", Text, 0.3, 0
  pigment { color rgb <0.8,0.2,0.2> }
  scale <2,2,0.3>
  rotate <45,30,60>   // オイラー角で逐次回転
  translate <-10, 2, 0>
}

// --- 行列指定による回転 ---
// ここでは Z軸45°回転の行列を例示
#declare Theta = 45;
#declare C = cos(radians(Theta));
#declare S = sin(radians(Theta));

text {
  ttf "meiryo.ttc", Text, 0.3, 0
  pigment { color rgb <0.2,0.2,0.8> }
  scale <2,2,0.3>
  matrix < C, -S, 0,
           S,  C, 0,
           0,  0, 1,
           10, 2, 0 >
}

// rotateは「X→Y→Z」の順序で逐次回転 → 非可換性により結果が変わる。
// matrix は「一つの変換行列」としてまとめて指定 → ジンバルロックを回避可能。
// 外部でクォータニオンや複数の回転行列を掛け合わせてから POV-Ray に渡すと、より複雑な回転も安定して表現できる。