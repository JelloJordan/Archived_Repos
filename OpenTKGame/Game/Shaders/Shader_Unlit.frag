#version 330 core

out vec4 FragColor;

uniform vec4 ModelColor;

void main()
{
    FragColor = ModelColor;
}