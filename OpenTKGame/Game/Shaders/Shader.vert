#version 330 core

layout (location = 0) in vec3 Position;
layout (location = 1) in vec3 Normal;

out vec3 surfaceNormal;
out vec3 toLightVector;

uniform mat4 Model;
uniform mat4 View;
uniform mat4 Projection;
uniform vec3 LightPosition;

void main()
{
    vec4 worldPosition = vec4(Position, 1.0f) * Model;
    gl_Position =  worldPosition * View * Projection;

    surfaceNormal = (Model * vec4(Normal, 0.0)).xyz;
    toLightVector = LightPosition - worldPosition.xyz;
}