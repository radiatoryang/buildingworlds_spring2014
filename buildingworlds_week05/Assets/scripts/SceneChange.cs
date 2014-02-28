using UnityEngine;
using System.Collections;

public class SceneChange : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		// change the scene after 60 seconds
		if ( Time.time > 60f ) {
			Application.LoadLevel( "dancingBaby" ); // load a scene called "dancingBaby"
		}
		
		// change the scene if you press R
		if (Input.GetKey (KeyCode.R) ) 
		{
			Application.LoadLevel( 1 ); // load the scene #1 in "File >> BuildSettings"
		}
		
	}
}
