using UnityEngine;
using System.Collections;

public class FishAnimate : MonoBehaviour {

	public Animation animationComponent; // assign in inspector
	
	// Update is called once per frame
	void Update () {
		// I'll need 2 pieces of data:
		// 1) how fast is the fish moving?
		// 2) how do I control how fast the fish animates?
		
		float fishMoveSpeed = rigidbody.velocity.magnitude; // grab fish's speed, regardless of direction
		animationComponent["SwimLoop"].speed = fishMoveSpeed; // stuff fish's speed into anim speed multiplier
	}
}
