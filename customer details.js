function validation() {
	var fname = document.getElementById("fname").value;
	var lname = document.getElementById("lname").value;
	var mobile = document.getElementById("mobile").value;
	var email = document.querySelector(email).value;
	var address = document.getElementById("address").value;
	var pwd = document.getElementById("dpwd").value;
	var confirm_pwd = document.getElementById("confirm_pwd").value;
	
	if (fname === "") {
		alert("First Name must be filled out");
		return false;
	} 
	if (lname === "") {
		alert("Last Name must be filled out");
		return false;
	}

	if (mobile >=10) {
		alert("Enter valid mobile number");
		return false;
	}

	if (email) {
		alert("Enter valid email");
		return false;
	}

    if (address ===""){
        alert("address must be filled out");
        return false;
    }

	if (pwd === "") {
		alert("Enter strong password(characters,lowercase,uppercase,number)");
		return false;
	}

	if (confirm_pwd === "") {
		alert("incorrect password");
		return false;
	}

	return true;
}
