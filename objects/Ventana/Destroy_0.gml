
with(GroupButtons){
	focus = true;	
}

for(var i = 0; i < array_length(buttons); i++){
	if(buttons[i] != -1){
		instance_destroy(buttons[i])
	}
}