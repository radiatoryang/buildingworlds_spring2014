using UnityEngine;
using System.Collections;

public class BallFeel : MonoBehaviour {

	public Transform ball1, ball2; // assign in Inspector

	// Use this for initialization
	void Start () {
		// BallSwap(); // DO NOT DO THIS
		StartCoroutine ( BallSwap() );
	}
	
	IEnumerator BallSwap () {
		Debug.Log ("the coroutine started!");
		yield return 0; // wait a frame
		Debug.Log ("one frame elapsed!");
		yield return 0;
		yield return null; // wait two frames
		Debug.Log ("two frames elapsed!");
		yield return new WaitForSeconds( 2.0f );
		Debug.Log ("two seconds elapsed!");
		
		while ( true ) {
			float time = 0f;
			Vector3 originalBall1Pos = ball1.position;
			Vector3 originalBall2Pos = ball2.position;
			while ( time < 1f ) {
				time += Time.deltaTime;
				ball1.position = Vector3.Lerp( originalBall1Pos, originalBall2Pos, time );
				ball2.position = Vector3.Lerp( originalBall2Pos, originalBall1Pos, time );
				if ( time >= 0.49f && time <= 0.51f) {
					audio.Play();
					StartCoroutine ( ScreenShake() );
				}
				yield return 0; // wait a frame
			} // closes out while(time<1f)
		} // closes out while(true)
	} // closes out BallSwap()
	
	IEnumerator ScreenShake() {
		float time = 0.5f;
		Vector3 originalCamPosition = Camera.main.transform.position; // remember original position
		while ( time > 0f ) {
			time -= Time.deltaTime;
			Camera.main.transform.position = originalCamPosition
											 + Vector3.up * Mathf.Sin (Time.time * 100f) * time
											 + Vector3.right * Mathf.Sin (Time.time * 113f) * time;
			yield return 0;
		}
		Camera.main.transform.position = originalCamPosition;
	}
	
}







