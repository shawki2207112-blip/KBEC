const userTab = document.getElementById("userTab");
const adminTab = document.getElementById("adminTab");

const loginTitle = document.getElementById("loginTitle");

const signupLink = document.getElementById("signupLink");

/* USER TAB */

function activateUser(){

    userTab.classList.add("active");
    adminTab.classList.remove("active");

    loginTitle.innerText = "User Login";

    signupLink.style.display = "block";
}

/* ADMIN TAB */

function activateAdmin(){

    adminTab.classList.add("active");
    userTab.classList.remove("active");

    loginTitle.innerText = "Admin Login";

    signupLink.style.display = "none";
}

/* CLICK EVENTS */

userTab.addEventListener("click", activateUser);

adminTab.addEventListener("click", activateAdmin);

/* URL PARAMETER */

const params = new URLSearchParams(window.location.search);

const type = params.get("type");

/* AUTO OPEN */

if(type === "admin"){
    activateAdmin();
}
else{
    activateUser();
}