// 三色団子（ガラスの団子 + 木の串）
// POV-Ray 3.7+ 用最小・再現可能シーン
// ----------------------------------------------

#version 3.7;

global_settings {
    assumed_gamma 1.0
}

#include "colors.inc"

// ========== カメラ / 光 / 背景 ==========
camera {
    location <0, 2.2, -8>
    look_at  <0, 0.8,  0>
    angle 35
}

light_source {
    < -6, 8, -6 >, color rgb <1,1,1>
    fade_distance 30
    fade_power 2
}

light_source {
    < 6, 4, -2 >, color rgb <0.8,0.85,1>
    fade_distance 30
    fade_power 2
}

background { color rgb <1,1,1> }

// ========== 素材定義 ==========

// ガラス素材の基本設定
#declare Glass_Base_Finish = finish {
    reflection 0.05
    specular 0.9
    roughness 0.001
    conserve_energy
}

#declare Glass_Base_Interior = interior {
    ior 1.52 // ガラスの屈折率
}

// 色付きガラステクスチャ
#declare Glass_Pink = texture {
    pigment { rgb <1.00, 0.70, 0.80> filter 0.85 }
    finish { Glass_Base_Finish }
}

#declare Glass_White = texture {
    pigment { rgb <1.00, 1.00, 1.00> filter 0.85 }
    finish { Glass_Base_Finish }
}

#declare Glass_Green = texture {
    pigment { rgb <0.65, 0.90, 0.75> filter 0.85 }
    finish { Glass_Base_Finish }
}

// 木材の串素材
#declare Wood_Skewer = texture {
    pigment {
        wood
        color_map {
            [0.00 color rgb <0.82, 0.74, 0.58>]
            [0.50 color rgb <0.78, 0.70, 0.54>]
            [1.00 color rgb <0.74, 0.66, 0.50>]
        }
        turbulence 0.25
        scale 0.5
    }
    normal { bumps 0.15 scale 0.5 }
    finish { diffuse 0.85 specular 0.15 }
}

// ========== 形状パラメータ ==========
#declare Dango_R      = 0.75;      // 団子半径
#declare Dango_Gap    = 0.10;      // 団子同士の隙間
#declare Skewer_R     = 0.12;      // 串半径
#declare Skewer_Extra = 0.80;      // 両端の延長

// ========== 三色団子 ==========
#declare DangoTriplet = union {
    // 団子の位置
    #declare x0 = - (Dango_R*2 + Dango_Gap);
    #declare x1 = 0;
    #declare x2 = + (Dango_R*2 + Dango_Gap);

    // ピンク
    sphere {
        <x0, 0, 0>, Dango_R
        texture { Glass_Pink }
        interior { Glass_Base_Interior }
    }

    // 白
    sphere {
        <x1, 0, 0>, Dango_R
        texture { Glass_White }
        interior { Glass_Base_Interior }
    }

    // 緑
    sphere {
        <x2, 0, 0>, Dango_R
        texture { Glass_Green }
        interior { Glass_Base_Interior }
    }

    // 串
    #declare Left_End  = x0 - Dango_R - Skewer_Extra;
    #declare Right_End = x2 + Dango_R + Skewer_Extra;

    cylinder {
        <Left_End, 0, 0>, <Right_End, 0, 0>, Skewer_R
        texture { Wood_Skewer }
    }

    // 見栄え調整
    rotate <0, 8, 0>
    translate <0, 0.8, 0>
}

// ========== 配置 ==========
object { DangoTriplet }