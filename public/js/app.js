(function() {

	// Initialize Firebase
	var config = {
		apiKey: "AIzaSyD_3ErWcStUSxeYZ1f0hZishFxfefxgcso",
		authDomain: "captain-plan-it-89d0b.firebaseapp.com",		
		databaseURL: "https://captain-plan-it-89d0b.firebaseio.com",
		projectId: "captain-plan-it-89d0b",
		storageBucket: "captain-plan-it-89d0b.appspot.com",
		messagingSenderId: "1045762209447"
	};
	firebase.initializeApp(config);
		
	// Get elements
	const txtUname = document.getElementById('txtUname');
	const txtPassword = document.getElementById('txtPassword');
	const btnLogin = document.getElementById('btnLogin');
	const btnSignUp = document.getElementById('btnSignUp');
	const btnLogout = document.getElementById('btnLogout');
		
	// Add login event
	btnLogin.addEvent('click', e => {
		// Get uname and pass
		const uname = txtUname.value;
		const pass = txtPassword.value;
		const auth = firebase.auth();
		// Sign in
		const promise = auth.signInWithUnameAndPassword(uname, pass);
		promise.catch(e => console.log(e.message));
	});
	
	btnSignUp.addEventListener('click', e => {
		// Get uname and pass
		// TODO: CHECK FOR REAL UNAME
		const uname = txtUname.value;
		const pass = txtPassword.value;
		const auth = firebase.auth();
		// Sign in
		const promise = auth.createUserWithUnameAndPassword(uname, pass);
		promise.catch(e => console.log(e.message));
	});
	
	btnLogout.addEventListener('click', e => {
		firebase.auth().signOut();
	});
	
	// Add a realtime listener
	firebase.auth().onAuthStateChanged(firebaseUser => {
		if (firebaseUser) {
			console.log(firebaseUser);
		} else {
			console.log('Not logged in');
		}
	});
	
});

// const auth = firebase.auth();
// auth.signInWithUnameAndPassword(uname, pass);
// auth.createUserWithUnameAndPassWord(uname, pass);
// auth.onAuthStateChanged(firebaseUser => {});