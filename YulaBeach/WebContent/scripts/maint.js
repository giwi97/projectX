function validateMaint(){
	
	var room, emp, desc;
	
	room = document.maintForm.room.value;
	emp = document.maintForm.emp.value;
	desc = document.maintForm.desc.value;
	
	
	if(room == "" || emp == ""){
		
		alert("Fill all the required fields!!");
		
		return false;
		
	}else{
		
		alert("New maintenance job added successfully");
		
		
		return true;
		
		
	}
	
	
	
	
	
}