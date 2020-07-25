var myError = document.getElementById("formError");

	// format check
	var inputFields = document.theForm.getElementsByTagName("input");
	for (key in inputFields) {
		var myField = inputFields[key];
		myField.onchange = function() {
			var myPattern = this.pattern;
			var myPlaceholder = this.placeholder;
			var isValid = this.value.search(myPattern) >= 0;
		if (!(isValid)){
			//if (this.name=="txtEmail" || this.name=="txtProvince" || this.name=="txtPostalCode"){
				myError.innerHTML = "Input does not match pattern: "+ myPlaceholder;
				this.focus();
						}
			//myField.focus();
		else{ // pattern is not valid
			myError.innerHTML = "";
			}// pattern is valid
		};// my field has changed
	//input fields
}

	document.theForm.onsubmit = function () {
			var x=false;
			var thisPostalCode=document.getElementById("txtPostalCode");
			var postalCode=thisPostalCode.value;
			var thisProvince=document.getElementById("txtProvince");
			var province=thisProvince.value;
			var thisEmail=document.getElementById("txtEmail");
			var email=thisEmail.value;
			if (postalCode==""){
						strMesg=("Please enter postal code!");
						thisPostalCode.focus();
						x= false;
			} else {
					if (province==""){
						strMesg=("Please enter province!");
						thisProvince.focus();
						x= false;
			} else {
					if (email==""){
						strMesg=("Please enter email!");
						thisEmail.focus();
						x= false;
			} else {
					x= true;
			}}}

			if (x==true){
					//thisCourseName.value="";
					//thisFirstName.value="";
					//thisLastName.value="";
					//thisAddress.value="";
					//thisCity.value="";
					//thisPostalCode.value="";
					//thisProvince.value="";
					//thisAge.value="";
					//thisPassword.value="";
					//thisPasswordConf.value="";
					//thisEmail.value="";
					alert("Thanks for registering with our website, your customer record was saved successfully.");
					return x;
			} else {
					alert(strMesg);
					return x;
		}};