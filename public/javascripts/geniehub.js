//including geniehub stuff :P
//download genie hub javascript APIs from http://www.itu.dk/~frza/infobus/#download
(function($)
{
	/*
	$.eventbus.start( EventBusURL, LogLevel, AfterConnectionFunction )
	*/
	//$.eventbus.start( 'http://tiger.itu.dk:8004','warn',function(){
	$.eventbus.start( 'http://idea.itu.dk:8000','warn',function(){
	
		//this function is called when the connection has been established
		
		var eb = $.eventbus;
		
		/*
		ptn is an array with the pattern that events must match to be received.
		Utility functions:
		$.eventbus.Any(FieldName)			>> match any value
		$.eventbus.Undef(FieldName)			>> the field MUST NOT be in the event
		$.eventbus.Eq(FieldName, Values)	>> match the value(s) passed as parameter (Values can be an array)
		$.eventbus.Neq, Lt, Lteq, Gt, Gteq  >> metch the value using the !=, <, <=, > or >= operator
		
		$.eventbus.createToken(FieldName,Operator,Value)
			>> create a pattern token. FieldName is a string.
			>> Operator can be: =, !=, <, <=, >, >=
			>> Value can be a single value or an array (only for the = operator)
		*/
		//var ptn = [ eb.Eq('activity','petanque')];//, eb.Any('latitude'), eb.Any('longitude') ];
		var ptn = [ eb.Any('activity')];

		/*
		$.createEventBusListener( Pattern, Callback )
		call the Callback function every time an event matching Pattern is received.
		*/
		var listener = $.createEventBusListener(ptn, onNewActivityEvent)
			/*function(message){
			//this function is called when an event is received
			var evt = message['data'];
			var user = evt['user'];
			var latitude = evt['latitude'];
			var longitude = evt['longitude'];
			var timestamp = evt['timestamp'];

			//do something with the event
			//$('#dbg').text(user + " with device " + btmac + " is in " + zone);
		});*/
		
//		var generator = $.createEventBusGenerator('test.generator',['user','terminal.btmac','zone.current'], function(msg){});
		
		//after 5 seconds, fire an event. Since it matches the test listener, we should see a message in the div#dbg
//		window.setTimeout(function(){ generator.publish({user:'user00','terminal.btmac':'09876543','zone.current':'here!'}) }, 5000);
		
	});
	
})(jQuery);