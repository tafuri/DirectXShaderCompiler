// RUN: %dxc -E main -T vs_5_0 %s

float4 main(out float4x4 a : A, int4 b : B) : SV_Position
{
  a = b.x;
  a[0].x = b.y;
  return b;
}