#include "colors.inc" 
#include "glass.inc" 

#declare vidro =
  finish {
    specular 0.5
    roughness 0.01
    ambient 0
    diffuse 0
    reflection { 0.01, 1.0  fresnel on  }
    conserve_energy
};
 
camera{
	location <0, 6, -6>
    look_at <0, 1.5, 0>
}    

light_source{
 <6, 10, -6>
 color White
}

plane {
	y, -1
	texture {
	    pigment { checker White Red}
	}
}

#declare copo = union {
  // --- INÍCIO DO VIDRO ---
  difference { 
    // "copo grande" (a parte de fora)
    cylinder { 
      <0, 0, 0>, <0, 3, 0>, 1
      texture {
        pigment { color White transmit 0.5
        }
        finish { vidro }
      }
    }
    
    // "corte" (a parte de dentro que será removida)
    cylinder { 
      <0, 0.2, 0>, <0, 3.01, 0>, 0.8
      texture {
        pigment { color White transmit 0.5
        }
        finish { vidro }
      }
    }
  } 
  // --- FIM DO VIDRO ---

  // "cerveja"
  cylinder { 
    <0, 0.21, 0>, <0, 2.64, 0>, 0.79
    texture { pigment { color Yellow } }
  }

  // "colarinho"
  cylinder { 
    <0, 2.65, 0>, <0, 2.7, 0>, 0.79
    texture { pigment { color Grey } }
  }
} // Fim do copo

object { copo }

