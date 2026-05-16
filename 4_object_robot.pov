// 4_object_robot.pov

#include "colors.inc"

// --------------------
// 1. Textures
// --------------------
#declare T_Red = texture {
  pigment { color rgb <1.0, 0.1, 0.1> }
  finish { diffuse 0.8 specular 0.2 }
}

#declare T_Blue = texture {
  pigment { color rgb <0.1, 0.2, 1.0> }
  finish { diffuse 0.8 specular 0.2 }
}

#declare T_Gray = texture {
  pigment { color rgb <0.6, 0.6, 0.6> }
  finish { diffuse 0.8 specular 0.3 }
}

#declare T_Black = texture {
  pigment { color Black }
  finish { diffuse 0.8 }
}

// --------------------
// 2. Small reusable parts
// --------------------

// Head is defined around the origin.
#declare Head = sphere {
  <0, 0, 0>, 0.35
  texture { T_Red }
}

// Body is defined with its bottom at y = 0.
#declare Body = box {
  <-0.45, 0.0, -0.25>, <0.45, 0.8, 0.25>
  texture { T_Blue }
}

// Arm is defined around the origin.
// It points downward first, then we rotate and translate it later.
#declare Arm = cylinder {
  <0, 0, 0>, <0, -0.55, 0>, 0.08
  texture { T_Gray }
}

// Leg is also defined around the origin.
#declare Leg = cylinder {
  <0, 0, 0>, <0, -0.60, 0>, 0.09
  texture { T_Gray }
}

// Eye is a small sphere.
#declare Eye = sphere {
  <0, 0, 0>, 0.045
  texture { T_Black }
}

// --------------------
// 3. Larger assembled object
// --------------------
#declare Robot = union {

  // body
  object {
    Body
    translate <0, 0.6, 0>
  }

  // head
  object {
    Head
    translate <0, 1.65, 0>
  }

  // left eye
  object {
    Eye
    translate <-0.12, 1.70, -0.30>
  }

  // right eye
  object {
    Eye
    translate <0.12, 1.70, -0.30>
  }

  // left arm
  object {
    Arm
    rotate <0, 0, -35>
    translate <-0.55, 1.35, 0>
  }

  // right arm
  object {
    Arm
    rotate <0, 0, 35>
    translate <0.55, 1.35, 0>
  }

  // left leg
  object {
    Leg
    translate <-0.25, 0.6, 0>
  }

  // right leg
  object {
    Leg
    translate <0.25, 0.6, 0>
  }
}

// --------------------
// 4. Scene
// --------------------
camera {
  location <0, 1.2, -5>
  look_at  <0, 1.0, 0>
  angle 35
}

light_source {
  <3, 5, -5>
  color White
}

background {
  color rgb <1, 1, 1>
}

object {
  Robot
}