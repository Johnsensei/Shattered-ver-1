using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterDrips : MonoBehaviour {

	public AudioClip[] waterDrips = new AudioClip[6];

	private AudioSource audioSource;

	// Use this for initialization
	void Start () {
		audioSource = GetComponent<AudioSource> ();
		InvokeRepeating ("PlayClipAndChange", 0.01f, 5.0f);
	}
		
	// Update is called once per frame
	void Update () {
		
	}

	void PlayClipAndChange(){
		audioSource.clip = waterDrips [Random.Range (0, 6)];
		audioSource.Play ();
	}
}
