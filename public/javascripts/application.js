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



// check on the status of the current activities from the server and add the related animations
$(document).ready(function(){

	
	//var activitycounter = {"laundry":1,"shopping":0,"petanque":1,"coffee":2,"gym":6}
	$.getJSON("/events.json",function(activitycounter){
		
		console.log("callback in")
		var tmp
		for (var i in activitycounter){	
			if (activitycounter[i] == 0){
				console.log("is zero or less "+i+":"+activitycounter[i])
				tmp +=" "+activitycounter[i]
				
				$("#"+i+' + .activitycounter').hide() // hide the brother of the activity icon, i.e. the activity counter
			}else{
				console.log("is max than zero "+i+":"+activitycounter[i])
				tmp +=" "+activitycounter[i]
				$("#"+i).addClass("active")
				$("#"+i+' + .activitycounter').show() // show the brother of the activity icon, i.e. the activity counter
				$("#"+i+' + .activitycounter').text(activitycounter[i]) // add text to the brother of the activity icon
			}
		}
			// DEBUG alert
			alert("minzega " + tmp)
			// end DEBUG
		$.elena={activitycounter:activitycounter} // $.elena is a global variable that holds useful data to share instead of always asking the server
	}); 

});



function onNewActivityEvent(evt){
  	var data = evt.data;
	var activity = data.activity;
	var content = data.content;
	var timestamp = data.timestamp;

	console.log("GenieHub event",evt)
	if (content == "start"){
		$( "#"+activity ).addClass("active")
	  	
		times=3
		$('#log').text('There is someone ' + activity);
		$.elena.activitycounter[activity] = $.elena.activitycounter[activity] +1;
		$("#"+activity+' + .activitycounter').show()
		$("#"+activity+' + .activitycounter').text($.elena.activitycounter[activity])
		for(var i=0; i<times;i++){
			$( "#"+activity ).animate({ borderWidth: "10px" }, 1000 )
		 					.animate({ borderWidth: "1px" }, 10 )
		 					.animate({ borderWidth: "10px" }, 1000 )
		 					.animate({ borderWidth: "1px" }, 10 )
		 					.animate({ borderWidth: "10px" }, 1000 )
		}
		 //.css(borderImage, 'url("img/star.png")')
		 //.animate({ width: "40%" }, 1000 )
	     //.animate({ fontSize: "24px" }, 1000 )
	    // .animate({ borderColor: "rgba(255,0,0,1)"}, 1000 )
	     	/*ideally here I should update the field #activity with an animation*/
		
		
	}	
	// here I need to check first if the counter is zero before making a stop animation
	// there will be space to improve this animation
	if (content == "stop" ){
		if ($.elena.activitycounter[activity]<=1){
			$( "#"+activity ).css('borderWidth',"0px")	
			$('#log').text('Stopping ' + activity);
			$("#"+activity+' + .activitycounter').hide() // add text to the brother of the activity icon
		}
		else{
			$.elena.activitycounter[activity] = $.elena.activitycounter[activity] -1
			$("#"+activity+' + .activitycounter').text($.elena.activitycounter[activity])
		}
	}
	
}