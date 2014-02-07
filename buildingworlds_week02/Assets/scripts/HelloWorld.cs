using UnityEngine;
using System.Collections;

public class HelloWorld : MonoBehaviour {

	// this is a VARIABLE, a piece of data that remembers our "current room" / position in world
	string currentRoom = "lobby";

	// Use this for initialization
	void Start () {
		// if you see "//" that's a comment, NOT code that is run
		// all instructions have to go inside functions
		Debug.Log ( "Hello World" );

	}
	
	// Update is called once per frame
	void Update () {

		GetComponent<TextMesh>().text = "Hola Mundo";

		// when you use an "if/else" structure, only ONE of those
		// blocks will ever run, it is an either/or scenario!
		if ( currentRoom == "lobby" ) {
			GetComponent<TextMesh>().text += "\nYou are in the lobby. \"Hey,\" says Bernie the guard.";
			GetComponent<TextMesh>().text += "\nPress [F] to go to 511.";

			if ( Input.GetKeyDown (KeyCode.F) ) {
				currentRoom = "room511";
			}

		} else if ( currentRoom == "room511" ) {
			GetComponent<TextMesh>().text += "\nYou are at Building Worlds. It's amazing. You're so happy.";
		}


	} // closes out Update (), from line 18

} // closes out the class declaration, from line 4







