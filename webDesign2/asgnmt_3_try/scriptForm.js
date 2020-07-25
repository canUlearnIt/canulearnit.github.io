	var myError = document.getElementById("formError");

	// format check
	var inputFields = document.theForm.getElementsByTagName ("input");
	for (key in inputFields) {
		var myField = inputFields[key];
		myField.onchange = function() {
			var myPattern = this.pattern;
			var myPlaceholder = this.placeholder;
			var isValid = this.value.search(myPattern) >= 0;
		if (!(isValid)) {
			if (this.name=="txtCreatePwd"){
				myError.innerHTML="At least 6 characters and at least one digit, please.";
				this.focus();
			}
			else{
				//this.name=="txtEmail" || this.name=="txtProvince" || this.name=="txtPostalCode"){
				myError.innerHTML = "Input does not match pattern: "+ myPlaceholder;
				this.focus();
			}
			//myField.focus();
		}else { // pattern is not valid
			myError.innerHTML = "";
		}// pattern is valid
		};// my field has changed
	}//input fields

// age check
		var thisAge=document.getElementById("txtAge");
		thisAge.onchange = function () {
		var age=thisAge.value;
		var numAge=(parseInt(age));
		if (numAge <= 17) {
			myError.innerHTML=("You must be at least 18 years old!");
			thisAge.focus();
		}
		if (isNaN(numAge)) {
			myError.innerHTML=("You must type a number!");
			thisAge.focus();
		}
		if (numAge > 17) {
			myError.innerHTML=("");
		}};
// password check
		var thisPassword = document.getElementById("txtCreatePwd");
		var thisPasswordConf = document.getElementById("txtConfirmPwd");
		thisPasswordConf.onchange = function () {
			var password = thisPassword.value;
			var passwordConf = thisPasswordConf.value;
		if (passwordConf!=password){
				myError.innerHTML=("Your password does not match!");
				thisPasswordConf.focus();
			}
		if (passwordConf==password) {
				myError.innerHTML=("");
			}};

// validation onsubmit event
	document.theForm.onsubmit = function () {
		var x=false;
		var thisCourseName=document.getElementById("txtCourseName");
		var courseName=thisCourseName.value;
		var thisCourseName=document.getElementById("txtCourseName");
		var courseName=thisCourseName.value;
		var thisFirstName=document.getElementById("txtFirtName");
		var firstName=thisFirstName.value;
		var thisLastName=document.getElementById("txtLastName");
		var lastName=thisLastName.value;
		var thisAddress=document.getElementById("txtAddress");
		var address=thisAddress.value;
		var thisCity=document.getElementById("txtCity");
		var city=thisCity.value;
		var thisPostalCode=document.getElementById("txtPostalCode");
		var postalCode=thisPostalCode.value;
		var thisProvince=document.getElementById("txtProvince");
		var province=thisProvince.value;
		var thisAge=document.getElementById("txtAge");
		var age=thisAge.value;
		var numAge = (parseInt(age));
		var thisPassword=document.getElementById("txtCreatePwd");
		var password=thisPassword.value;
		var thisPasswordConf=document.getElementById("txtConfirmPwd");
		var passwordConf=thisPasswordConf.value;
		var thisEmail=document.getElementById("txtEmail");
		var email=thisEmail.value;
		if (courseName=="")	{
			strMesg=("Please enter course name!");
			thisCourseName.focus();
			 x= false;
		}
		else {
			if (firstName==""){
					strMesg=("Please enter first name!");
					thisFirstName.focus();
					x= false;
		} else {
			if (lastName==""){
					strMesg=("Please enter last name!");
					thisLastName.focus();
					x= false;
		} else {
				if (address==""){
					strMesg=("Please enter address!");
					thisAddress.focus();
					x= false;
		} else {
				if (city==""){
					strMesg=("Please enter city!");
					thisCity.focus();
					x= false;
		} else {
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
				if (numAge==""){
					strMesg=("Please enter your age!");
					thisAge.focus();
					x= false;
				}
				if (numAge<=17) {
					strMesg=("You must be at least 18 years old!");
					thisAge.focus();
					x= false;
				}
				if (isNaN(numAge)) {
					strMesg=("You must type a number for your age!");
					thisAge.focus();
					x= false;
		} else {
				if (password==""){
					strMesg=("Please enter password!");
					thisPassword.focus();
					x= false;
		} else {
				if (passwordConf==""){
					strMesg=("Please enter password!");
					thisPasswordConf.focus();
					x= false;
				}
				if (passwordConf!=password){
					strMesg=("Your password does not match!");
					thisPasswordConf.focus();
					x= false;
		} else {
				if (email==""){
					strMesg=("Please enter email!");
					thisEmail.focus();
					x= false;
		} else {
				x= true;
		}}}}}}}}}}}

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






