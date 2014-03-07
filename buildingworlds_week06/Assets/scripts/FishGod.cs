using UnityEngine;
using System.Collections;
using System.Collections.Generic; // add this line to use "Lists"

public class FishGod : MonoBehaviour {

	public Fish fishBlueprint; // assign in inspector
	List<Fish> fishList = new List<Fish>();

	// Use this for initialization
	void Start () {
		int counter = 0;
		while ( counter < 100 ) {
			Fish newFish = Instantiate ( fishBlueprint, Random.insideUnitSphere * 10f, Random.rotation ) as Fish;
			fishList.Add (newFish);
			counter++; // "increment" basically means "+= 1"
		}
	}
	
	// Update is called once per frame
	void Update () {
		// is user holding down spacebar? then tell each Fish in fishList to swim to (0,0,0)
		if ( Input.GetKey(KeyCode.Space) ) {
			foreach ( Fish notPierce in fishList ) {
				notPierce.destination = Vector3.zero;
			}
		}
	}
}
