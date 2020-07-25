var theForm=document.getElementById("myForm");
var from = document.getElementById("flightFrom");
var to = document.getElementById("flightTo");
var adults = document.getElementById("adults");
var kids = document.getElementById("numChildren");
var depDay = document.getElementById("depDay");
var depMon = document.getElementById("depMon");
var depYear = document.getElementById("depYear");
var retDay = document.getElementById("retDay");
var retMon = document.getElementById("retMon");
var retYear = document.getElementById("retYear");

var myError = document.getElementById("formError");

var returnDate = document.getElementById("returnDate");
var tripOne = document.getElementById("one");
var tripRound = document.getElementById("round");
var tripOptions=document.getElementsByName("rdTrip");
var classOptions=document.getElementsByName("rdClass");
var dateChecked=false;

var tripChecked=false;
var classChecked=false;

var submitReturn=false;
var oneWayTripChecked=false;
var roundTripChecked=false;

var responseOneWay;
var depDayIndex;
var departureDay;
var depMonIndex;
var departureMon;
var depYearIndex;
var departureYear;
var retDayIndex;
var returnDay;
var retMonIndex;
var returnMon;
var retYearIndex;
var returnYear;
var adultsIndex;
var passengerAd;
var kidsIndex;
var passengerKid;
var fromIndex;
var flightFrom;
var toIndex;
var flightTo;


//round trip or one way
tripOne.onclick=function(){
	responseOneWay = confirm("You chose one way flight. Do you want to continue?");
	if (responseOneWay){
	returnDate.style.visibility = "hidden";
	oneWayTripChecked=true;
	}
	else{
		tripOne.checked = false;}
};

tripRound.onclick=function(){
	returnDate.style.visibility = "visible";
	roundTripChecked=true;
};


//one child selected
kids.onchange = function(){
	kidsIndex = kids.selectedIndex;
	passengerKid = kids[kidsIndex].value;
	myError.innerHTML="children flying: "+passengerKid;
	if (kidsIndex==1){
		alert("One child under 6 flies for free!");
	}
};


//validating and submitting the form
document.theForm.onsubmit=function() {
	// check if required fields have values in them
	//myError.innerHTML="";
	toIndex = to.selectedIndex;
	flightTo = to[toIndex].value;
	fromIndex = from.selectedIndex;
	flightFrom = from[fromIndex].value;
	adultsIndex = adults.selectedIndex;
	passengerAd = adults[adultsIndex].value;
	toIndex = to.selectedIndex;
	flightTo = to[toIndex].value;
	depDayIndex = depDay.selectedIndex;
	departureDay = depDay[depDayIndex].value;
	var numDepartureDay=(parseInt(departureDay));

	depMonIndex = depMon.selectedIndex;
	departureMon = depMon[depMonIndex].value;
		var numDepartureMon=(parseInt(departureMon));

	depYearIndex = depYear.selectedIndex;
	departureYear = depYear[depYearIndex].value;
		var numDepartureYear=(parseInt(departureYear));

	retDayIndex = retDay.selectedIndex;
	returnDay = retDay[retDayIndex].value;
		var numReturnDay=(parseInt(returnDay));

	retMonIndex = retMon.selectedIndex;
	returnMon = retMon[retMonIndex].value;
		var numReturnMon=(parseInt(returnMon));

	retYearIndex = retYear.selectedIndex;
	returnYear = retYear[retYearIndex].value;
		var numReturnYear=(parseInt(returnYear));


	if(tripOptions[0].checked==true || tripOptions[1].checked==true){
		tripChecked=true;
	} else {
	 tripChecked=false;
	}

	if(classOptions[0].checked==true || classOptions[1].checked==true  ){
		classChecked=true;
	} else {
	 classChecked=false;
	}


//validation start
	if (tripChecked==false){
			myError.innerHTML="Please select round or one way trip!";
			submitReturn=false;
	}
	else{
		if (fromIndex==0){
		myError.innerHTML="Please choose location you are flying from!";
		from.focus();
		submitReturn=false;
		}
		else {
		if (toIndex==0){
		myError.innerHTML="Please choose location you are flying to!";
		to.focus();
		submitReturn=false;
	}else {
		if (depDayIndex==0){
		myError.innerHTML="Please enter day when departing!";
		depDay.focus();
		submitReturn=false;
	}else {
		if (depMonIndex==0){
		myError.innerHTML="Please enter month when departing!";
		depMon.focus();
		submitReturn=false;
	}else {
		if (depYearIndex==0){
		myError.innerHTML="Please enter year when departing!";
		depYear.focus();
		submitReturn=false;
	}
	else {
		//checking returning date if round trip is checked
		if (roundTripChecked==true){
			if(retDayIndex==0){
			myError.innerHTML="Please enter day when returning!";
			retDay.focus();
			submitReturn=false;
						      }
			else {
				if(retMonIndex==0){
				myError.innerHTML="Please enter month when returning!";
				retMon.focus();
				submitReturn=false;
								  }
			else {
				if(retYearIndex==0){
				myError.innerHTML="Please enter year when returning!";
				retYear.focus();
				submitReturn=false;
								   }

			else {
				if ((numReturnYear<numDepartureYear) || (numReturnYear==numDepartureYear && numReturnMon<numDepartureMon ) || (numReturnYear==numDepartureYear && numReturnMon==numDepartureMon && numReturnDay<numDepartureDay ))
				{
					myError.innerHTML="The return date must be later than the departure date.";
					submitReturn=false;
				}
				else {
						if(adultsIndex==0){
						myError.innerHTML="Please enter number of people flying!";
						submitReturn=false;
					}
					else {

						if (classChecked==false){
										myError.innerHTML="Please select business or economy class!";
										submitReturn=false;
						}

					else {
		submitReturn=true;
				}}}}}}//close 3 else statements
				}//end if for one way ticket
	else {
		if(adultsIndex==0){
		myError.innerHTML="Please enter number of people flying!";
		submitReturn=false;
	}
	else {

		if (classChecked==false){
						myError.innerHTML="Please select business or economy class!";
						submitReturn=false;
		}

	else {
		submitReturn=true;
}}}}}}}}}


if (submitReturn==true){
	var responseSearch = confirm("We will search for matching flights from "+ flightFrom+" to "+flightTo+" on "+departureDay+"/"+departureMon+"/"+departureYear+". Do you want to continue?");
			if (responseSearch){
				alert("Please wait till we find your matching flights.");
				}
			else {
				alert("Please revise your choices and try again.");
				submitReturn=false;
		}}
	return submitReturn;

};


