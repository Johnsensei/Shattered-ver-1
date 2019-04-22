using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Utility;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public class PlacementSimple : MonoBehaviour {

	private AudioSource audioSource;
	public static int setPieces = 0;
	private bool pieceSet = false;

	public AudioClip crystalPickup;
	public AudioClip crystalPlace;

	public GameObject partPosition;
	public AudioClip partDialogue;
	public AudioClip testPartDialogue;
	public AudioClip partMusic;
	public AudioClip partMix;

	void OnTriggerEnter (Collider partPosition){
		//Debug.Log ("Collision detected.");
		Rigidbody rb = this.GetComponent<Rigidbody> ();

		if (partPosition.tag == this.tag && this.tag != "Head") {

			this.transform.position = new Vector3 (partPosition.transform.position.x, partPosition.transform.position.y, partPosition.transform.position.z);
			this.transform.rotation = Quaternion.identity;
			rb.isKinematic = true;
			setPieces += 1;
			pieceSet = true;
			Debug.Log ("Set pieces = " + setPieces);
			this.GetComponent<shaderGlow> ().enabled = false;
			partPosition.GetComponent<Light> ().enabled = false;

			audioSource.clip = partDialogue;
			audioSource.Play ();

		}

	}
		
	// Use this for initialization
	void Start () {
		audioSource = GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetMouseButtonDown (0)) {
			audioSource.Stop ();
		}
		//Encountered a bug where setPieces = 10.
		//Which isn't possible, but it's happened twice.
		//If it happens, the head won't set.
		//This code fixes set pieces back to 9 if this bug ever happens again.
		//Bug may have been on scene resets where set pieces didn't get reset. Leaving code just in case.
		if (setPieces == 10) {
			Debug.Log ("Set pieces is 10. Resetting to 9");
			setPieces = 9;
		}
		
		}

	void OnMouseDown(){
		if (!pieceSet){
		partPosition.GetComponent<Light> ().enabled = true;
	}
	}

	void OnMouseUp(){
		partPosition.GetComponent<Light> ().enabled = false;
	}
}
