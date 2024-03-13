varying vec2 v_vTexcoord;
void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float glowIntensity = 0.5;
    gl_FragColor = texColor * (1.0 + glowIntensity);
}