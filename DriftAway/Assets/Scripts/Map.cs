using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Map : MonoBehaviour
{
    public Material TileMaterial;
    
    public Tile Test;
    
    void Start()
    {
        Test.Generate();
    }
}
