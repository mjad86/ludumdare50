function screen_shake(){

	with(global.iCam) {
		if(argument[0] > shakeRemain) {
			shakeMagnitude = argument[0];
			shakeRemain = shakeMagnitude;
			shakeLenght = argument[1];
		}//end if
	}//end with

}//end script