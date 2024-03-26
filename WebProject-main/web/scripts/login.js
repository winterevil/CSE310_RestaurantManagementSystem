const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');
const forgotPasswordButton = document.querySelector('.sign-in-container a');
const backButton = document.getElementById('backButton');
const forgotPasswordContainer = document.querySelector('.forgot-password-container');
const signInContainer = document.querySelector('.sign-in-container');
const signUpContainer = document.querySelector('.sign-up-container');

signUpButton.addEventListener('click', () => {
    signInContainer.style.display = 'block';
    forgotPasswordContainer.style.display = 'none';
    signUpContainer.style.display = 'block';
    container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
    signInContainer.style.display = 'block';
    forgotPasswordContainer.style.display = 'none';
    signUpContainer.style.display = 'block';
    container.classList.remove("right-panel-active");
});

forgotPasswordButton.addEventListener('click', (e) => {
    e.preventDefault();
    signInContainer.style.display = 'none';
    forgotPasswordContainer.style.display = 'block';
    signUpContainer.style.display = 'none';
});

backButton.addEventListener('click', () => {
    signInContainer.style.display = 'block';
    forgotPasswordContainer.style.display = 'none';
    signUpContainer.style.display = 'block';
});

document.querySelector('.send_code').addEventListener('click', function (e) {
    e.preventDefault();
    this.disabled = true;
    setTimeout(() => this.disabled = false, 2 * 60 * 1000); // 2 minutes

    var emailId = document.querySelector('.forgot-password-container input[name="emailId"]').value;

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "SendCode", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.send("emailId=" + encodeURIComponent(emailId));
});