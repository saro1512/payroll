function validate_form(form)
{
	if(form.login.value == "" || form.password.value == "")
	{
		alert("User Name/Password can't be blank");
		return false;
	}
}
