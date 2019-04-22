using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;
using UnityEngine.SceneManagement;

public class gameFlow : MonoBehaviour {

	public GameObject myCanvas;
	public GameObject playerObject;
	//public GameObject endCanvas;


	// Use this for initialization
	void Start () {
		
		playerObject.GetComponent<FirstPersonController> ().enabled = false;
		Cursor.visible = true;
		Cursor.lockState = CursorLockMode.None;
	}
	
	// Update is called once per frame
	void Update () {


//		if (Input.GetKey (KeyCode.R)) {
//			RunGame ();
//		}
	}

	public void RunGame (){

		myCanvas.SetActive (false);

		playerObject.GetComponent<FirstPersonController> ().enabled = true;

	}

	public void QuitGame(){
		Application.Quit();
		Debug.Log ("Quit Game");
	}

}
