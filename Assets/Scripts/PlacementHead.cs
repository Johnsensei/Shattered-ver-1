using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Utility;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;
using UnityEngine.SceneManagement;

public class PlacementHead : MonoBehaviour {

	private AudioSource audioSource;
	private bool pieceSet = false;
	public static bool endingPlaying = false;
	public GameObject endCanvas;
	public GameObject playerObject;
	public GameObject introMusicObject;
	public GameObject directionalLight;
	public GameObject levelManager;
	//Do I need the Level Manager here?

	public AudioClip crystalPickup;
	public AudioClip crystalPlace;
	public AudioClip gleam;
	public AudioClip finalDialogue;
	public GameObject screenFader;

	public GameObject partPosition;
	public AudioClip partDialogue;
	public AudioClip testPartDialogue;
	public AudioClip partMusic;
	public AudioClip introMusic;

	void OnTriggerEnter (Collider partPosition){
		Rigidbody rb = this.GetComponent<Rigidbody> ();

		if (partPosition.tag == this.tag && this.tag == "Head" && PlacementSimple.setPieces == 9) {
			this.transform.position = new Vector3 (partPosition.transform.position.x, partPosition.transform.position.y, partPosition.transform.position.z);
			this.transform.rotation = Quaternion.identity;
			rb.isKinematic = true;
			pieceSet = true;
			this.GetComponent<shaderGlow> ().enabled = false;
			partPosition.GetComponent<Light> ().enabled = false;

			audioSource.PlayOneShot(partDialogue);
			//audioSource.PlayOneShot(testPartDialogue);
			Invoke ("Ending", 5f);
			Invoke ("PlayFinalDialogue", 12f);
			Invoke ("PlayIntroMusic", 75f);
		}
	}

	// Use this for initialization
	void Start () {
		audioSource = GetComponent<AudioSource> ();
	}

	// Update is called once per frame
	void Update () {

		if (!endingPlaying && Input.GetMouseButtonDown (0)) {
			audioSource.Stop ();
		}

	}

	void OnMouseDown(){
		if (!pieceSet && PlacementSimple.setPieces == 9){
			partPosition.GetComponent<Light> ().enabled = true;
		}
	}

	void OnMouseUp(){
		partPosition.GetComponent<Light> ().enabled = false;
	}

	void Ending(){
		audioSource.PlayOneShot (gleam);
		Fader.Instance.FadeIn();

	}
	void PlayFinalDialogue(){
		audioSource.volume = 1;
		audioSource.PlayOneShot (finalDialogue);
		endingPlaying = true;
		endCanvas.SetActive (true);
		directionalLight.SetActive (false);
		//Do I have to re-enable the First Person Controller?
		//playerObject.GetComponent<FirstPersonController> ().enabled = true;
		screenFader.SetActive (false);

	}

	void PlayIntroMusic(){
		introMusicObject.SetActive (true);
	}

}