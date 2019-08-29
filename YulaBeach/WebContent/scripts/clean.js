function validateClean(){
	
	var room, emp, desc;
	
	room = document.cleanForm.room.value;
	emp = document.cleanForm.emp.value;
	desc = document.cleanForm.desc.value;
	
	
	if(room == "" || emp == ""){
		
		alert("Fill all the required fields!!");
		
		return false;
		
	}else{
		
		alert("New maintenance job added successfully");
		
		
		return true;
		
		
	}
	
	
	
	
	
}