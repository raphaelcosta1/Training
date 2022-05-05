// TODO: write your code here!
const cards = document.querySelectorAll('.clickable');
const eventType = "click";
const action = (event) => {
  event.currentTarget.classList.toggle('active');
};
cards.forEach((card) => {
  card.addEventListener(eventType, action);
});
