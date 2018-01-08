uniform sampler2D tex : register(s0);
uniform float4 col1 : register(c0);
uniform float4 col2 : register(c1);


float4 main(in float2 texcoord : TEXCOORD0) : COLOR0
{
	float4 fb = tex2D(tex, texcoord);
	fb = fb + fb*col1*col1.a*2 + fb*col2*col2.a*2;
	fb.a = 1.0f;
	return fb;
}
