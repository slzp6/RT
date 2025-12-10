// 4_csg_sample3 

camera {
  location <0, 2, -3>
  look_at <0, 1, 0>
}

light_source {
  <10, 10, -10>
  color rgb <1, 1, 1>
}

background { color rgb <0.8, 0.9, 0.9> }
      
#declare obj_union =
union {
  sphere { <0, 1, 0>, 0.3 }
  cylinder { <0, 0, 0>, <0, 1, 0>, 0.5 }
  texture {
    pigment { color rgbt <0.9, 0.9, 1.0, 0.9> } 
    finish { phong 0.6 reflection 0.1 }
  }
  interior {
    ior 1.5 
  }
}       
      
#declare obj_merge =
merge {
  sphere { <0, 1, 0>, 0.3 }
  cylinder { <0, 0, 0>, <0, 1, 0>, 0.5 }
  texture {
    pigment { color rgbt <0.9, 0.9, 1.0, 0.9> }
    finish { phong 0.6 reflection 0.1 }
  }
  interior {
    ior 1.5 
  }
}                     
             
object {obj_union translate <-1,0,0>}
object {obj_merge translate <1,0,0>}


