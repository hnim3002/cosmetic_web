

const productList = [
    {
        id: 1,
        name: "Product 1",
        price: 100000
    },
    {
        id: 2,
        name: "Product 2",
        price: 200000
    }, {
        id: 3,
        name: "Product 3",
        price: 300000
    },
    {
        id: 4,
        name: "Product 4",
        price: 100000
    },
    {
        id: 5,
        name: "Product 5",
        price: 200000
    },
    {
        id: 6,
        name: "Product 6",
        price: 300000
    },
    {
        id: 7,
        name: "Product 7",
        price: 100000
    },
    {
        id: 8,
        name: "Product 8",
        price: 200000
    },
    {
        id: 9,
        name: "Product 9",
        price: 300000
    },
    {
        id: 10,
        name: "Product 10",
        price: 100000
    }
]; 

var listOfproduc = [];

var cartCount = document.getElementById("CartCounter");

const searchValue = document.getElementById("Searcher");
const searchResult = document.getElementById("search-result");


searchValue.addEventListener("input", e => {
    const value = e.target.value.toLowerCase()
    searchResult.innerHTML = "";
    productList.forEach(product => {
        if (product.name.toLowerCase().includes(value)) {
            searchResult.innerHTML += `<a style="text-decoration: none" href="SingleProduct.aspx?id=${product.id}"><div class="result">${product.name} - ${product.price}</div></a>`
        }
    })
    if (searchValue.value.trim() == "") {
        searchResult.innerHTML = "";
    }
})



function addToCart(id, quantity) {
    var product = { "id": id, "quantity": quantity};
    listOfproduc.push(product);
    itemCount = parseInt(cartCount.textContent) + 1
    cartCount.innerHTML = itemCount
}

function cartOnClick() {
    var jsonData = JSON.stringify(listOfproduc);
    listOfproduc = [];
    var url = "Cart.aspx?dataList=" + encodeURIComponent(jsonData);
    window.location.href = url;

    
}
