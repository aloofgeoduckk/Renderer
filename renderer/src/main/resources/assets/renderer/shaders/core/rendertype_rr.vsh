#version 150

in vec3 Position;
in vec2 UV0;
in vec2 UV1;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec2 texCoord0;
out vec2 widthHeight;
out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    texCoord0 = UV0;
    widthHeight = UV1; // hacky shit
    vertexColor = Color;
}
