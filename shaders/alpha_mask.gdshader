shader_type canvas_item;

uniform sampler2D maskTexture;

void fragment() {
  COLOR = texture(TEXTURE, UV);
  float mask = texture(maskTexture, UV).r;
  COLOR.a = mask;
}
