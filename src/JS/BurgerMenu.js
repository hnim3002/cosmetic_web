function toggleMenu() {
    const cartIcon = document.getElementById("cart-icon");
    const accountIcon = document.getElementById("account-icon");
    const inputSearch = document.getElementById("Searcher");
    cartIcon.classList.toggle("in-menu");
    accountIcon.classList.toggle("in-menu");
    inputSearch.classList.toggle("active")
}