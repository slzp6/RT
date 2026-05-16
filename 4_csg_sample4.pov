#include "colors.inc"
#include "textures.inc"

// ------------------------------------------------------------
// Camera and Light
// ------------------------------------------------------------
camera {
    location <0, 4, -14>   // higher and farther to see everything clearly
    look_at <0, 3, 0>
}

light_source { <10, 25, -10> color White }

// ------------------------------------------------------------
// Sky background
// ------------------------------------------------------------
sky_sphere {
    pigment {
        gradient y
        color_map {
            [0.0 color rgb <0.6,0.7,1.0>]
            [1.0 color rgb <0.1,0.2,0.5>]
        }
    }
}

// ------------------------------------------------------------
// Ground plane
// ------------------------------------------------------------
plane {
    y, 0
    texture {
        pigment { checker color White, color Gray }
        finish { ambient 0.2 diffuse 0.8 }
    }
}

// ------------------------------------------------------------
// Colored glass sphere texture with bump normal
// ------------------------------------------------------------
#declare ColoredBumpyGlass =
texture {
    pigment { color rgbf <0.1, 0.8, 0.3, 0.6> } // green tinted glass
    finish  { phong 0.8 reflection 0.05 }
    normal  { bumps 0.8 scale 0.2 }            // strong bump to emphasize boundary
};

// ------------------------------------------------------------
// LEFT SIDE: UNION
// ------------------------------------------------------------
union {
    // Taller transparent glass box (not a cube)
    box {
        <-4, 0.5, -1>, <-2, 4.5, 1>
        texture { Glass }
        interior { ior 1.5 }
    }

    // Colored glass sphere half embedded into the top
    // Box top is at y = 4.5
    // Sphere radius = 1
    // To embed half: center at y = 4.5 - 0.5 = 4.0
    sphere {
        <-3, 4.0, 0>, 1
        texture { ColoredBumpyGlass }
        interior { ior 1.5 }
    }
}

// ------------------------------------------------------------
// RIGHT SIDE: MERGE
// ------------------------------------------------------------
merge {
    // Taller transparent glass box
    box {
        <2, 0.5, -1>, <4, 4.5, 1>
        texture { Glass }
        interior { ior 1.5 }
    }

    // Colored glass sphere half embedded into the top
    sphere {
        <3, 4.0, 0>, 1
        texture { ColoredBumpyGlass }
        interior { ior 1.5 }
    }
}


