global_settings {
  assumed_gamma 1
  radiosity {
    pretrace_start 0.08
    pretrace_end 0.04
    count 35

    nearest_count 5
    error_bound 1.8
    recursion_limit 3

    low_error_factor 0.5
    gray_threshold 0.0
    minimum_reuse 0.015
    brightness 1

    adc_bailout 0.01/2
  }
}

camera {
  location <0, 0, -512>
  rotate <0, 0, 0>
  right x*image_width/image_height
  angle 360*(1/(1024+216+8)) /* Normally 360*0.25 */ 
  look_at <0, 0, 0>
}

light_source { <512, 512, -512>
  color rgb <1, 1, 1>
}

/* scale
4/5
(4/5 + 1/70)/2
1/70
*/

sphere { <0, 0, 0>, 1
  scale <1, (4/5 + 1/70)/2, 1>
  rotate <0, 0, 0>
  texture {
    pigment { rgb 1 }
    finish {
      specular 0.2
      roughness 0.025
      ambient 0.2
      diffuse 0.725
      brilliance 1
    }
  }
}