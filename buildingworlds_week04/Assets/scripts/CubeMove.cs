using UnityEngine;
using System.Collections;

public class CubeMove : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		GetComponent<Transform>().position += new Vector3 ( 0f, 1f, 0f );

		//lowercase transform is a shortcut for "GetComponent<Transform>()"
		// transform.position += new Vector3( 2f, 0f, -0.245f );

		transform.Translate ( new Vector3( 0f, 1f, 0f ) );
	}
}
