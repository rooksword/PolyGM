//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = (v_vColour - vec4(0.33, 0.33, 0.33, 0)) * texture2D( gm_BaseTexture, v_vTexcoord );
}
