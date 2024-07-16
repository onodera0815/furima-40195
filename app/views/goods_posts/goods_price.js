window.addEventListener('turbo:load', () => {
  console.log("OK");
});


const priceInput = document.getElementById("price_id");
priceInput.addEventListener("input", () => {
  const inputValue = priceInput.value;
  console.log(inputValue);
})
const addTaxDom = document.getElementById("add-tax-price");
addTaxDom.innerHTML = "price_id /10"

window.addEventListener("turbo:load", price);
window.addEventListener("turbo:render", price);