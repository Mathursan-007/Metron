	
	window.onscroll = function() {myFunction()};

	function myFunction() {
	  if (document.body.scrollTop > 1400 && document.body.scrollTop < 2170 || document.documentElement.scrollTop > 1400 && document.documentElement.scrollTop < 2170) {
	    document.getElementById("main").className = "navbar navbar-expand-lg navbar-light fixed-top";
	    document.getElementById("main").style.background= "black";
	    document.getElementById("try").className = " ";
	    document.getElementById("try1").className = "active";
		document.getElementById("try2").className = "";
		document.getElementById("try3").className = " ";
	  } 
	  
	  else if (document.body.scrollTop > 2170 && document.body.scrollTop < 2900|| document.documentElement.scrollTop > 2170 && document.documentElement.scrollTop < 2900) {
		    document.getElementById("main").className = "navbar navbar-expand-lg navbar-light fixed-top";
		    document.getElementById("main").style.background= "black";
		    document.getElementById("try").className = " ";
			document.getElementById("try1").className = " ";
			document.getElementById("try3").className = " ";
		    document.getElementById("try2").className = "active";
	  }

	  else if (document.body.scrollTop > 2900 && document.body.scrollTop < 4000|| document.documentElement.scrollTop > 2900 && document.documentElement.scrollTop < 4000) {
		  document.getElementById("main").className = "navbar navbar-expand-lg navbar-light fixed-top";
		    document.getElementById("main").style.background= "black";
		    document.getElementById("try").className = " ";
		    document.getElementById("try1").className = " ";
			document.getElementById("try2").className = "";
			document.getElementById("try3").className = "active";
	  }
	  else {
	    document.getElementById("main").className = "navbar navbar-expand-lg navbar-light fixed-top";
	    document.getElementById("main").style.background= "black";
	    document.getElementById("try").className = "active";
	    document.getElementById("try1").className = " ";    
		document.getElementById("try2").className = " ";
		document.getElementById("try3").className = " ";
	  }
	}

	