//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 baseColor = texture2D(gm_BaseTexture, v_vTexcoord);
    baseColor.rgb = mix(baseColor.rgb, vec3(1.0), 0.5);
    baseColor.rgb *= vec3(1.0, 0.2, 0.2);
    gl_FragColor = baseColor * v_vColour;
}