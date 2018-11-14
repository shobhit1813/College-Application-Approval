   	function checkCredentials(){
		var x = document.getElementById("name").value;
		var y = document.getElementById("pwd").value;
		if(x == "shobhit" && y == "123"){
			window.alert("login Successfull");
		}
		else{
			window.alert("Login Failed: Username or id is wrong");
		}
	}

	function changeUserInProperty(){
		document.getElementById("usr").style.color = "yellow";
	}

	function changePassInProperty(){
		document.getElementById("ps").style.color = "yellow";
	}

	function changeUserOutProperty(){
		document.getElementById("usr").style.color = "white";
	}

	function changePassOutProperty(){
		document.getElementById("ps").style.color = "white";
	}


