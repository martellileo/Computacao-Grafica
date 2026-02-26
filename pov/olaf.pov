#include "colors.inc"
#include "textures.inc"

#declare normalNeve = normal { wrinkles 0.3 scale 0.05 }
#declare finishNeve = finish { ambient 0.4 diffuse 0.8}
#declare texturaMadeira = texture{ DMFWood5 scale 1}

//Elementos
//camera
camera {
    fisheye
    location    <1.9, 2.5, -2> //<1.9, 3.5, -4> sem fish eye
    look_at     <0 ,1, 2.3>
}

//luz
light_source {
    <10, 10, -10>
    rgb <0.1, 0.2, 0.5>
}

// chao
plane {
    y, -1
    texture {
        pigment {color White}
        normal {bumps 0.2 scale 0.9}
    }
}

//ceu
plane{ //ceu com nuvens
    <0,1,0>,1 hollow  
      
    texture{ 
        pigment {color rgb<0.1,0.3,0.75>*0.7}
        finish {emission 1 diffuse 0}
    } 

    texture{ 
        pigment{ 
            bozo 
            turbulence 0.75 
            octaves 6  
            omega 0.7 
            lambda 2 

            color_map {
                [0.0  color rgb <0.95, 0.95, 0.95> ]
                [0.05  color rgb <1, 1, 1>*1.25 ]
                [0.15 color rgb <0.85, 0.85, 0.85> ]
                [0.55 color rgbt <1, 1, 1, 1>*1 ]
                [1.0 color rgbt <1, 1, 1, 1>*1 ]
            } 

            translate< 3, 0,-1>
            scale <0.3, 0.4, 0.2>*3
        }
           
            finish {emission 1 diffuse 0}
        }
    scale 10000
}

fog { 
    fog_type   2
    distance   1000
    color      rgb<1,1,1>*0.9
    fog_offset 0.1
    fog_alt    20
    turbulence 1.8
} 



//Boneco de neve
// pés
sphere {
    <0, 0, 2>, 1
    texture{
    pigment {color rgb <0.7,0.7,0.85>}
        normal {normalNeve}
        finish {finishNeve}
    }
}



// torso
sphere { // bola meio
    <0, 1.2, 2>, 0.8
    texture{
    pigment {color rgb <0.7,0.7,0.85>}
        normal {normalNeve}
        finish {finishNeve}
    }
}

sphere { //botao 1
    <0, 1.12, 1.26>, 0.10
    texture{texturaMadeira}
}

sphere { //botao 2
    <0, 1.45, 1.27>, 0.08
    texture{ texturaMadeira}
}

sphere { //botao 3
    <0, 1.70, 1.4>, 0.06
    texture{ texturaMadeira}
}

//braco esquerdo
cylinder{
    <1, 1.5, 2>
    <2.5, 1.5, 2> 0.08
    texture {texturaMadeira}
    rotate z*20
    translate y*-0.30
}

//braco direito
cylinder{
    <-1, 1.5, 2>
    <-2.5, 1.5, 2> 0.08
    texture {texturaMadeira}
    rotate z*-20
    translate y*-0.30
}


// cabeca
sphere { // bola branca
    <0, 2.4, 2>, 0.6
    texture{
    pigment {color rgb <0.7,0.7,0.85>}
        normal {normalNeve}
        finish {finishNeve}
    }
}

sphere { //olho esquerdo
    <-0.2, 2.6, 1.54>, 0.10
    texture{ pigment {color Black}}
}

sphere { //olho direito
    <0.2, 2.6, 1.54>, 0.10
    texture{ pigment {color Black}}
}

//cenoura
cone {
    <0.0, 2.0, -1>, 0.1
    <0.0, 2.6, -1>, 0
    texture { 
        pigment {color Orange}
        normal {bumps 1 scale 1}
    }
    rotate x*-90
    translate z*3.5
    translate y*3.44
}

// boca
box { 
    <0.2, 0, 0>
    <-0.2, 0.05, 0.05>
    texture { texturaMadeira}
    translate y*2.2
    translate z*1.43
    rotate z*10
    translate x*0.4
}


//chapeu
//aba
cylinder {
    <0, 2.9, 2>
    <0, 3.0, 2> 0.70
    texture{ pigment {color Black}}
    finish {phong 0.1}
}

//parte de cima do chapeu
cylinder {
    <0, 3, 2>
    <0, 3.8, 2> 0.40
    texture{ pigment {color Black}}
    finish {phong 0.1}
}

//faixa
cylinder {
    <0, 3, 2>
    <0, 3.2, 2> 0.405
    texture{ pigment {color Red}}
}