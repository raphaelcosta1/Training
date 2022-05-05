// TODO: Autocomplete the input with AJAX calls.
const apiList = document.querySelector("#results");

// pegar o elemento input document.query
const wordSearch = document.getElementById("search");
// adicionar o escutador do evento no input do tipo keyup addeventlistener
// quando o evento ocorrer keyup, função
// pegar o valor do input element.value
wordSearch.addEventListener('keyup', (event) => {
  apiList.innerHTML = "";
  const userinput = wordSearch;
  fetch(`https://wagon-dictionary.herokuapp.com/autocomplete/${userinput}`)
    .then(response => response.json())
    .then((data) => {
      data.words.forEach((word) => {
        apiList.insertAdjacentHTML("beforeend", `<li>${word}</li>`);
      });
    });
});
// buscar na API sugestões para esses valores fetch url
// primeiro then transformo a resposta num JSON
// segundo then eu já uso para manipular o resultado para o que quero fazer
//   renderizar sugestões para o user
