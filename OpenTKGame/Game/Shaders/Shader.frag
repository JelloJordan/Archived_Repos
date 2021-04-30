#version 330 core

in vec3 surfaceNormal;
in vec3 toLightVector;

out vec4 FragColor;

uniform vec4 ModelColor = vec4(1f, 1f, 1f, 1f);
uniform vec3 LightColor;

void main()
{
    vec3 unitNormal = normalize(surfaceNormal);
    vec3 unitLight = normalize(toLightVector);

    float nDotl = dot(unitNormal, unitLight);
    float brightness = max(nDotl, 0.1);
    vec3 diffuse = brightness * LightColor;

    FragColor = vec4(diffuse,1.0) * ModelColor;
}