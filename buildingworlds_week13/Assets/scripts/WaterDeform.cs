using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class WaterDeform : MonoBehaviour {

	// store the original position of each vertex
	List<Vector3> baseVertices = new List<Vector3>();
	
	// reserve some memory for working with the vertices
	List<Vector3> workingCopy = new List<Vector3>();

	// Use this for initialization
	void Start () {
		// remember where all the vertices started
		baseVertices = new List<Vector3>( GetComponent<MeshFilter>().mesh.vertices );
		workingCopy = new List<Vector3>( baseVertices );
	}	
	
	// Update is called once per frame
	void Update () {
		for ( int i=0; i<workingCopy.Count; i++ ) {
			// apply sine wave to it
			workingCopy[i] = baseVertices[i] 
							 + Vector3.up 
							 * Mathf.Sin ( Time.time + i) * 0.3f;
		}
		
		// put the new data back into the model
		GetComponent<MeshFilter>().mesh.vertices = workingCopy.ToArray();
		// put the visual mesh data into the physics collider data
		GetComponent<MeshCollider>().sharedMesh = GetComponent<MeshFilter>().mesh;
		
		// recalculate normals for correct shading
		GetComponent<MeshFilter>().mesh.RecalculateNormals();
		
		// optional: visualize normals
		foreach ( Vector3 vector in workingCopy ) {
			Debug.DrawRay ( transform.TransformPoint ( vector ), 
							GetComponent<MeshFilter>().mesh.normals[ workingCopy.IndexOf(vector) ] );
		}
	}
}









