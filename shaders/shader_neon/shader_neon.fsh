//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelW;
uniform float pixelH;
uniform vec4 glowCol;
uniform float radius;
uniform float factor;

void main()
{
    vec4 fillCol = v_vColour;//vec4(1.0, 1.0, 1.0, 1.0);
    
    gl_FragColor = vec4(fillCol.rgb, fillCol.a * texture2D(gm_BaseTexture, v_vTexcoord).a);
    
    if (gl_FragColor.a > 0.0)
        return;
    
    float m = glowCol.a / factor;
    m *= m;
    for(float cx = 0.0; cx <= radius; cx += 1.0) {
        float lim = radius * radius - cx * cx;
        for(float cy = 0.0; cy * cy <= lim; cy += 1.0) {
            if (texture2D(gm_BaseTexture, v_vTexcoord + vec2(cx * pixelW, cy * pixelH)).a > 0.0
            || texture2D(gm_BaseTexture, v_vTexcoord + vec2(-cx * pixelW, cy * pixelH)).a > 0.0
            || texture2D(gm_BaseTexture, v_vTexcoord + vec2(cx * pixelW, -cy * pixelH)).a > 0.0
            || texture2D(gm_BaseTexture, v_vTexcoord - vec2(cx * pixelW, cy * pixelH)).a > 0.0) {
                m = min(m, cx * cx + cy * cy);
                break;
            }
        }
    }
    
    gl_FragColor = vec4(glowCol.rgb, clamp(glowCol.a - factor * sqrt(m), 0.0, 1.0));
}


