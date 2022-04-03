function collition(){

	//horizontal col
	if(place_meeting(x + hSpeed, y, o_parent_col)) {
		while(!place_meeting(x + sign(hSpeed), y, o_parent_col)) {
			x += sign(hSpeed);
		}//end while
		hSpeed = 0;
	}//end if
	
	//vertical col
	if(place_meeting(x, y + vSpeed, o_parent_col)) {
		while(!place_meeting(x, y + sign(vSpeed), o_parent_col)) {
			y += sign(vSpeed);
		}//end while
		vSpeed = 0;
	}//end if

}//end script