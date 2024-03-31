using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(MeshRenderer), typeof(MeshFilter), typeof(MeshCollider))]
public class Tile : MonoBehaviour
{
    MeshRenderer _meshRenderer;
    MeshFilter _meshFilter;
    MeshCollider _meshCollider;
    Map _map;

    Mesh mesh;

    Vector3[] vertices;
    int[] triangles;

    bool initialized = false;
    
    void Start()
    {
        if (!initialized)
            Initialize();
    }
    
    void Initialize()
    {
        _meshRenderer = GetComponent<MeshRenderer>();
        _meshFilter = GetComponent<MeshFilter>();
        _meshCollider = GetComponent<MeshCollider>();
        _map = this.transform.parent.GetComponent<Map>();

        initialized = true;
    }
    
    public void Generate()
    {
        if (!initialized)
            Initialize();
        
        mesh = new Mesh();
        _meshFilter.mesh = mesh;

        vertices = new Vector3[]
        {
            new Vector3 (-0.5f, 0, -0.5f),
            new Vector3 (-0.5f, 0, 0.5f),
            new Vector3 (0.5f, 0, -0.5f),
            new Vector3 (0.5f, 0, 0.5f)
        };

        triangles = new int[]
        {
            0, 1, 2,
            1, 3, 2
        };

        mesh.Clear();
        mesh.vertices = vertices;
        mesh.triangles = triangles;
        mesh.RecalculateNormals();

        _meshRenderer.material = _map.TileMaterial;

        _meshCollider.sharedMesh = mesh;
    }
}
