#version 330 core

in vec3 Position;
in vec3 Normal;

uniform mat4 Model;
uniform mat4 View;
uniform mat4 Projection;

out vec4 color;

void main()
{
    vec4 worldPosition = vec4(Position, 1.0f) * Model;
    gl_Position =  worldPosition * View * Projection;

    color = vec4(Position.x + .25f, Position.y + .25, Position.z + .25, 5f);
}