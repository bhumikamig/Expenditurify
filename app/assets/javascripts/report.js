(function render(){
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		defaultDate: '2015-08-08',
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		allDaySlot: false,
		events: 
	    {
	      url: '/expenses',
	      cache: true,
	      type: 'GET',    
	      error: function (data) {
	        alert(data.statusText);
	      }
	    },
	});
})();

$(document).on('page:fetch', render); 
$(document).on('page:load', render);
$(document).on('page:restore', render);
$(document).on('page:change', render);