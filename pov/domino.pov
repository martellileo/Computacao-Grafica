#include "colors.inc"
#include "textures.inc"

// camera
camera {
    location <0, 4, -5>
    look_at <0 ,1, 0>
}

sky_sphere {
    pigment {
    rgb <0.50, 0.65, 0.90>
 }
}

// cenário
plane {
    y, -1
    texture {
        Rosewood scale 40
        rotate <0, 100, 0>
    }
}

background{
    rgb <0.6, 0.6, 0.6>
}

light_source{
    <10, 10, -10>
    color White
}

// objetos
sphere{
    <-4, 0, 4>, 1
    texture {
        Blood_Marble
    }
}

box { //domino caido
    <-2.8, -1, 3.8>
    <-3.1, 1.5, 4.8>
    texture{
        White_Marble
    }
    rotate z*-45
    translate y*-2.3
}

box { //domino 2
    <-0.9, -1, 3.8>
    <-1.2, 1.5, 4.8>
    texture{
        White_Marble
    }
    rotate z*-20
    translate y*-0.4
}

box { //domino 3
    <0.3, -1, 3.8>
    <0, 1.5, 4.8>
    texture{
        White_Marble
    }
}

box { //domino 4
    <1.2, -1, 3.8>
    <0.9, 1.5, 4.8>
    texture{
        White_Marble
    }
}

box { //domino 5
    <2.1, -1, 3.8>
    <1.8, 1.5, 4.8>
    texture{
        White_Marble
    }
}

box { //domino 6
    <3.0, -1, 3.8>
    <2.7, 1.5, 4.8>
    texture{
        White_Marble
    }
    rotate y*-20
    translate x*1.8
}

box { //domino 7
    <3.0, -1, 3.8>
    <2.7, 1.5, 4.8>
    texture{
        White_Marble
    }
    rotate y*-40
    translate x*5
    translate z*1.7
}
