using UnityEngine;
using System.Collections;

public class RaycastDemo : MonoBehaviour {

	public Transform blueprint; // assign in inspector
	
	// Update is called once per frame
	void Update () {
		// construct Ray and RaycastHit before actually shooting the Raycast
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit rayHit = new RaycastHit(); // blank container for info
		
		// actually shoot the Raycast now
		if ( Physics.Raycast ( ray, out rayHit, 1000f ) ) 
		{
			// if I left-click, then SPAWN a new thing
			if ( Input.GetMouseButton (0) ) {
				transform.LookAt ( rayHit.point );
				Instantiate ( blueprint, rayHit.point, Quaternion.identity );
			}
			
			// if I click right-click, then DELETE the thing
			if ( Input.GetMouseButton (1) ) 
			{
				Destroy (rayHit.transform.gameObject);
			}
		}
	} // closes out Update
} // closes out class definition
