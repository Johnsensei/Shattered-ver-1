using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class IntroAudioMVR : MonoBehaviour {

	public GameObject playerObject;
	public AudioClip introDialogue;

	private AudioSource audioSource;


	void OnTriggerEnter (Collider playerObject){
		Debug.Log ("Player hit floor.");
		audioSource.clip = introDialogue;
		audioSource.Play ();

		Invoke ("DisableFPC", 0.1f);
	
	}

	void DisableFPC(){
		//For MVR version because FPC effs up the controls.
		playerObject.GetComponent<FirstPersonController>().enabled=false;
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
}
