function displayDate(){
	var myElement=document.getElementById("date");
	function makeArray() {
        for (i = 0; i < makeArray.arguments.length; i++)
        this[i + 1] = makeArray.arguments[i];
    }
    var now = new Date();
    var n = now.getDay()+1;
    var weekDays = new makeArray('Sunday', 'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
    var months = new makeArray('January', 'February', 'March', 'April', 'May',
    'June', 'July', 'August', 'September', 'October', 'November', 'December');
    var date = new Date();
    var day = date.getDate();
   	var month = date.getMonth() + 1;
    var yy = date.getFullYear();
    year = (yy < 1000) ? yy + 1900 : yy;
    if (day == 1) suffix = ("st");
    else if (day == 2) suffix = ("nd");
    else if (day == 3) suffix = ("rd");
    else if (day == 21) suffix = ("st");
    else if (day == 22) suffix = ("nd");
    else if (day == 23) suffix = ("rd");
    else if (day == 31) suffix = ("st");
    else suffix = ("th");
    var myDate=document.createTextNode("Current Date: " + weekDays[n]+", " +months[month] + " " + day + suffix + ", " + year);
    myElement.appendChild(myDate);
}
function displayTime(){
	var myElement=document.getElementById("time");
	var now = new Date();
    var h = now.getHours();
    var min = now.getMinutes();
    if (min<10)
    min="0"+min;
    var s = now.getSeconds();
        if (s<10)
    s="0"+s;
    var myTime=document.createTextNode("Current Time: " + h + ":" + min + ":" + s);
	myElement.appendChild(myTime);
}

	var myButton=document.getElementById("cart");
	myButton.onclick=function(){
		var x=false;
	var myQty=document.getElementById("qty");
	var valQty=myQty.options[myQty.selectedIndex].value;
	var mySize=document.getElementById("size");
	var valSize=mySize.options[mySize.selectedIndex].value;
	var myColour=document.getElementById("colour");
	var valColour=myColour.options[myColour.selectedIndex].value;
	while (valQty=="" && ((valSize!="" && valColour!="") || (valSize=="" && valColour=="") ||
	(valSize!="" || valColour!="")||(valSize=="" || valColour==""))){
		alert("Please select quantity.");
		return false;
		break;
		}
	while ((valSize=="" && valQty!="" && valColour!="")|| (valSize=="" && valColour=="" && valQty!="" )){
		alert("Please select size.");
			return false;
		break;
		}
	while(valColour=="" && valQty!="" && valSize!=""){
		alert("Please select colour.");
			return false;
		break;
		}
		if(valSize!="" && valQty!="" && valColour!=""){
			myColour.value="";
			myQty.value="";
			mySize.value="";
			return true;
		}

		/* how can i display the following info in the next page	?
					alert("Your order of "+valQty +" unit(s) "+valSize+"-inch "+valColour+"-colour flat panel TV is complete.\n"+
			"Thank you for shopping with Modern World Technology.");
			*/
};

  	var brand;
	var rate;
	var text="";
	displayTime();
	displayDate();
	var myElement=document.getElementById("brandLoop");
	function displayText(){
		for(var i=0; i<rate; i++){
			text +=(brand + " ");
		}
		var myNewText=document.createTextNode(text);
		myElement.appendChild(myNewText);
	}
  	window.onload = function(){
  	brand=window.prompt("What is your favourite brand of television sets?", "none");
	rate=window.prompt("On scale of 1 to 100, how much do you like it?", "80");
	while (rate>100 || rate<=0){
		rate=window.prompt("Number must be between 1 and 100!", "80");
	}
	displayText();
};



