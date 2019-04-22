using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PartPosition : MonoBehaviour {

	private AudioSource audioSource;
	public AudioClip crystalPlace;
	public AudioClip partMusic;

	public GameObject statuePart;

	void OnTriggerEnter (Collider statuePart){
		Debug.Log ("Collision detected with match.");

		if (statuePart.tag == this.tag && this.tag != "Head") {

			audioSource.PlayOneShot (crystalPlace);
			audioSource.PlayOneShot (partMusic);

		} else if (statuePart.tag == this.tag && this.tag == "Head" && PlacementSimple.setPieces == 9) {
			audioSource.PlayOneShot (crystalPlace);
			audioSource.PlayOneShot (partMusic);
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
	}

	void PlayMusic(){
		audioSource.clip = partMusic;
		audioSource.Play ();
	}
}
