const displayAlertOnButtonClick = () => {
  const btn = document.querySelector(".btn");
  // TODO: Select the big green button
  btn.addEventListener("click", () => {
    alert("Thank you!");
  });
  // TODO: Bind the `click` event to the button
  // TODO: On click, display `Thank you!` in a JavaScript alert!
};

displayAlertOnButtonClick(); // Do not remove!
