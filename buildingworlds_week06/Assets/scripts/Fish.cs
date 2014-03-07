using UnityEngine;
using System.Collections;

public class Fish : MonoBehaviour {

	public Vector3 destination;

	// Use this for initialization
	void Start () {
		// after 0 seconds, it will randomize its destination every 5 sec.
		InvokeRepeating( "RandomizeDestination", 0f, 5f);
	}
	
	void RandomizeDestination () {
		destination = Random.insideUnitSphere * 10f;
	}
	
	void FixedUpdate () {
		// always move toward "destination"
		rigidbody.AddForce ( Vector3.Normalize(destination - transform.position) );
	}
	
	void Update () {
		// always look the direction you're moving
		transform.rotation = Quaternion.LookRotation (rigidbody.velocity);
	}
	
	
}
