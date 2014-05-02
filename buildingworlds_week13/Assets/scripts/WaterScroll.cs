using UnityEngine;
using System.Collections;

public class WaterScroll : MonoBehaviour {

	public float waterScrollSpeed = 0.25f;

	// Update is called once per frame
	void Update () {
		Vector2 newOffset = new Vector2( Time.time, Time.time ) * waterScrollSpeed;
		renderer.material.mainTextureOffset = newOffset;
	}
}
