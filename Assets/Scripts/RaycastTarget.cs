using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class RaycastTarget : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler 

{
	public bool incorrectPart;


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void IPointerEnterHandler.OnPointerEnter(PointerEventData eventData){
	
		//lightOn
		this.GetComponent<shaderGlow>().lightOn();

		if (incorrectPart) {
			this.GetComponent<IncorrectPartsMVR> ().isTargeted = true;
		}
	
	}

	void IPointerExitHandler.OnPointerExit(PointerEventData eventData){

		//lightOff
		this.GetComponent<shaderGlow>().lightOff();

		if (incorrectPart) {
			this.GetComponent<IncorrectPartsMVR> ().isTargeted = false;
		}
	}


}
