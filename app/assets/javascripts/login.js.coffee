# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

@validate_form = () ->
	form = document.getElementById "login_form"
	unless(form.elements.login and form.elements.password)
		alert "UserName/Password can't be blank"
		return false

@alert_coffee = () -> 
	alert "alert from coffee script"
