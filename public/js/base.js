/* set document.getElementById into $ */
function $(id) {
		var element = document.getElementById(id);
		if (element == null )
			alert( 'Programmer error: ' + id + ' does not exist.' );
		return element;
}

function producePrompt(message, promptLocation, color) {
	$(promptLocation).innerHTML = message;
	$(promptLocation).style.color = color;
}

/*=========================================================*/
/* validate registration form */

function validUserName() {
	var uname= $('username').value;
	if(uname.length == 0) {
		producePrompt('Username is required', 'uname_error' , 'red');
		return false;
	}
  producePrompt('','name_error', '');
	return true;

function validateEmail () {
	var email = $('CustEmail').value;
	if(email.length == 0) {
		producePrompt('Please input an Email','email_error', 'red');
	return false;
}
    producePrompt('','email_error', '');
    return true;

function validPassword() {
	var pword = $('password').value;
	if (pword.length == 0) {
		producePrompt('Please input a password.','pword_error', 'red');
		return false;
}
  producePrompt('','pword_error', '');
	return true;

function validConfirmPassword() {
	var pword = $('password').value;
	var cpword = $('confirmPassword').value;
	if (cpword.length == 0) {
		producePrompt('Please re-enter your password.','cpword_error', 'red');
		return false;
	}
	if (pword != cpword) {
		producePrompt('Please re-enter your password.','cpword_error', 'red');
		return false;
	}
	producePrompt('','cpword_error', '');
	return true;
}

/* validate register form upon pressing submit button*/
function validateRegisterForm() {
	if (!validUserName() || !validPassword() || !validConfirmPassword()) {
		alert('Please correct errors to submit.');
		return false;
	}
}


/*=========================================================*/
// Contact Us Functions

function validateEmail () {
	var email = $('CustEmail').value;
	if(email.length == 0) {
		producePrompt('Please input an Email','email_error', 'red');
	return false;
}
    producePrompt('','email_error', '');
    return true;

function validateMessage() {
	var message = $('message').value;
	var required = 30;
	var left = required - message.length;
	if (left > 0) {
		producePrompt(left + ' remaining characters required','message_error','red');
		return false;
	}
	producePrompt('','message_error', '');
	return true;
}

/* validate contact us form upon pressing submit button*/
function validateContactForm() {
	if (!validateEmail() || !validateMessage()) {
		alert('Please correct errors to submit.', 'submit_error', 'red');
		return false;
	}
}
