using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaycastDebug : MonoBehaviour {

	RaycastHit hit;


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		

		if (Physics.Raycast (transform.position, transform.forward, out hit)) {
			Debug.Log (hit.transform.name);
			//hit.collider.gameObject.GetComponent<shaderGlow> ().lightOn ();
			//hit.transform.SendMessage ("HitByRay");
		}
	}
}
