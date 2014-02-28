using UnityEngine;
using System.Collections;

public class PhysicsDemo : MonoBehaviour {

	// Use this for initialization
	void Start () {

	}
	
	// FixedUpdate is called __ seconds
	void FixedUpdate () {
		if ( Input.GetKey ( KeyCode.Space ) ) 
		{
			GetComponent<Rigidbody>().AddForce( transform.up * 20f, ForceMode.Acceleration );
		}
		
		if ( Input.GetKey (KeyCode.UpArrow) )
		{
			rigidbody.AddForce ( transform.forward * 20f );
		}
		
		if ( Input.GetKey (KeyCode.LeftArrow) )
		{
			rigidbody.AddForce ( -transform.right * 5f );
		}
		// rigidbody.AddForce( new Vector3(0f, 10f, 0f) );
	}
	
	
	
}
