// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

/*$(document).ready(function(){
	window.setTimeout(function() {
		alert("test")
		$('#shopping')
 	     .animate({ borderColor: "rgba(255,0,0,1)"}, 1000 )
		 .animate({ borderWidth: "10px" }, 1000 )
		 .animate({ borderWidth: "3px" }, 1000 )
		 .animate({ borderWidth: "10px" }, 1000 )
		 .animate({ borderWidth: "3px" }, 1000 )
	},1000)
})*/

function onNewActivityEvent(evt){
  	var data = evt.data;
	var activity = data.activity;
	var content = data.content;
	var timestamp = data.timestamp;

	if (content == "start"){
	  $( "#"+activity )
		 .animate({ borderWidth: "10px" }, 1000 )
		 .animate({ borderWidth: "1px" }, 10 )
		 .animate({ borderWidth: "10px" }, 1000 )
		 .animate({ borderWidth: "1px" }, 10 )
		 .animate({ borderWidth: "10px" }, 1000 )
		 //.css(borderImage, 'url("img/star.png")')
		 //.animate({ width: "40%" }, 1000 )
	     //.animate({ fontSize: "24px" }, 1000 )
	    // .animate({ borderColor: "rgba(255,0,0,1)"}, 1000 )
	     	/*ideally here I should update the field #activity with an animation*/
		$('#log').text('There is someone ' + activity);
	}	
	if (content == "stop"){
		$( "#"+activity ).css('borderWidth',"0px")	
		$('#log').text('Stopping ' + activity);
	}
}