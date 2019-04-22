using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ResetGame : MonoBehaviour {

	public GameObject endCanvas;
	public GameObject introMusicObject;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (PlacementHead.endingPlaying == true && Input.GetMouseButtonDown(0)){
			DoResetGame ();
		}
	}

	public void DoResetGame(){
		PlacementSimple.setPieces = 0;
		SceneManager.LoadScene (0);
		endCanvas.SetActive (false);
		introMusicObject.SetActive (false);

		//Don't need cursor in MVR version.
		Cursor.visible = true;
		Cursor.lockState = CursorLockMode.None;
	}
}
