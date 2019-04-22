using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncorrectParts : MonoBehaviour {

	private AudioSource audioSource;

	public GameObject playerObject;
	public AudioClip crystalPickup;

	public AudioClip partDialogue;
	public AudioClip testPartDialogue;


	// Use this for initialization
	void Start () {
		audioSource = GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {

	
	}

	void OnMouseDown(){
		Debug.Log ("Incorrect part clicked.");
		audioSource.PlayOneShot (partDialogue);
	}

	void OnMouseUp(){
		Debug.Log ("Incorrect part released.");
		audioSource.Stop ();
	
	}
}
