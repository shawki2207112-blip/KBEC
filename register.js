/* GET EVENT NAME FROM URL */

const params = new URLSearchParams(window.location.search);

const eventName = params.get("event");

/* HTML ELEMENTS */

const eventTitle = document.getElementById("eventName");

const eventInput = document.getElementById("eventInput");

/* SHOW EVENT NAME */

if(eventName){

    const cleanName = decodeURIComponent(eventName);

    eventTitle.innerText = cleanName;

    eventInput.value = cleanName;
}
else{

    eventTitle.innerText = "Unknown Event";
}

/* FORM SUBMIT */

const form = document.getElementById("registerForm");

form.addEventListener("submit", function(e){

    e.preventDefault();

    alert("Registration Submitted Successfully!");

    form.reset();
});