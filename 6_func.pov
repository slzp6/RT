#version 3.7;

global_settings { assumed_gamma 1.0 }

camera {
  location <0, 5, -20>
  look_at  <0, 0, 0>
}
light_source { <0, 20, -20> color rgb 1 }
background { color rgb <0.7, 0.9, 1.0> }

// 関数定義：波打つ地形（修正済み）
#declare TerrainFn = function {
  sin(x*2)*cos(z*2)
}

// 関数を使ってisosurfaceを生成
isosurface {
  function { y - TerrainFn(x, y, z) }
  contained_by { box { <-5, -2, -5>, <5, 2, 5> } }
  threshold 0
  accuracy 0.001
  max_gradient 5
  pigment { color rgb <0.4, 0.8, 0.4> }
  finish { phong 0.6 }
}