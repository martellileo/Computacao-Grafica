#include "colors.inc"
#include "stones.inc"
light_source {
  < -2, 4, -4>
  rgb <1,1,1>
}

light_source {
  <6, 4, 4>
  rgb <0.5, 0.5, 0.5>
}

// fundo
background {
  rgb <0.5,0.75,1>
}

// sky_sphere {
//  pigment {
//    gradient y
//      color_map {
//      [0.0 rgb <1,1,1>]          // horizonte é branco
//      [0.8 rgb <0.1, 0.2, 0.5>]  // até azul claro em 80%
//      [1.0 Blue]                 // e azul em 100%
//      }
//  }
//  translate -0.5
//  scale 1.5
//}

camera {
  perspective// [perspective | orthographic | fisheye]
  // angle 50
  location <2.8, 2.5, -8>
  look_at  <2.8, 0.5,  0>
}


box {   // tamanho 1/1
  <0,0,0>,
  <1.44, 1.44, 1.44>
  texture {
    pigment {
      color Blue
    }
  }
}

box {  // tamanho 1/2
  <0,0,-1.4>,
  <0.72, 0.72, -0.72>
  texture {
    pigment {
      color Blue
    }
  }
}

box {   // tamanho 1/4
  <1.08, 0.00, -1.8>,
  <1.44, 0.36, -2.16>
  texture {
    pigment {
      color Blue
    }
  }
}


cone {
  <2.8, 0.0, 0.9>, 0.9
  <2.8, 3.2, 0.9>, 0.0
  texture {
    pigment {
      color Green
    }
  }
}

cone {   // cone 1/2
  <2.35, 0.0, -1.08>, 0.45
  <2.35, 1.6, -1.08>, 0
  texture {
    pigment {
      color Green
    }
  }
}

cone {   // cone 1/4
  <3.475, 0.0, -1.98>, 0.225
  <3.475, 0.8, -1.98>, 0
  texture {
    pigment {
      color Green
    }
  }
}

sphere {
  < 4.73, 0.9, 0.9>, 0.9
  texture {
    pigment {
      color Red
    }
  }
}

sphere {
  < 4.28, 0.45, -1.08>, 0.45
  texture {
    pigment {
      color Red
    }
  }
}

sphere {
  <5.405, 0.225, -1.98>, 0.225
  texture {
    pigment {
      color Red
    }
  }
}

plane {
  y, 0
  texture{
  pigment {
    checker White Tan
    }
  }
}
