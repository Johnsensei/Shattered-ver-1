using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAudio : MonoBehaviour {


	public AudioClip crystalPickup;

	private AudioSource audioSource;

	// Use this for initialization
	void Start () {
		audioSource = GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {
		CrystalPickup ();
	}

	void CrystalPickup ()
	{
		if (!audioSource.isPlaying && Input.GetMouseButtonDown (0)) {
			audioSource.PlayOneShot (crystalPickup);
		}
	}

}
