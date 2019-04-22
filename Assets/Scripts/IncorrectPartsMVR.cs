using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncorrectPartsMVR : MonoBehaviour {

	private AudioSource audioSource;

	public AudioClip partDialogue;

	public bool isTargeted = false;


	// Use this for initialization
	void Start () {
		audioSource = GetComponent<AudioSource> ();
	}

	// Update is called once per frame
	void Update () {

		if (isTargeted && Input.GetMouseButtonDown(0)) {
			Debug.Log ("Incorrect part clicked.");
			audioSource.PlayOneShot (partDialogue);
		}

		if (Input.GetMouseButtonUp(0)) {
			Debug.Log ("Incorrect part released.");
			audioSource.Stop ();
		}

	}

//	void OnMouseDown(){
//
//			Debug.Log ("Incorrect part clicked.");
//			audioSource.PlayOneShot (partDialogue);
//
//	}

	void OnMouseUp(){
		Debug.Log ("Incorrect part released.");
		audioSource.Stop ();

	}
}
