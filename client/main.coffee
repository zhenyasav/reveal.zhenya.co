Session.set 'time', new Date()

Meteor.startup ->
	Meteor.setInterval ->
		Session.set 'time', new Date()
	, 1000

Template.main.helpers
	hours: -> moment(Session.get('time')).format 'h'
	minutes: -> moment(Session.get('time')).format 'mm'
	seconds: -> moment(Session.get('time')).format 'ss'
	ampm: -> moment(Session.get('time')).format 'a'