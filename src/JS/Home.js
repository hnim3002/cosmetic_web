const productList = [
    {
        id: 1,
        name: "Women Shirt",
        price: 100000
    },
    {
        id: 2,
        name: "Women Shirt",
        price: 200000
    }, {
        id: 3,
        name: "Women Shirt",
        price: 300000
    },
    {
        id: 4,
        name: "Women Trouser",
        price: 100000
    },
    {
        id: 5,
        name: "Women Trouser",
        price: 200000
    },
    {
        id: 6,
        name: "Women Skirt",
        price: 300000
    },
    {
        id: 7,
        name: "Men Shirt",
        price: 100000
    },
    {
        id: 8,
        name: "Men Shirt",
        price: 200000
    },
    {
        id: 9,
        name: "Men Shirt",
        price: 300000
    },
    {
        id: 10,
        name: "Men Pants",
        price: 100000
    },
    {
        id: 11,
        name: "Men Pants",
        price: 200000
    },
    {
        id: 12,
        name: "Men Pants",
        price: 300000
    },
    {
        id: 13,
        name: "Lipstick",
        price: 100000
    },
    {
        id: 14,
        name: "Lipstick",
        price: 200000
    },
    {
        id: 15,
        name: "Lipstick",
        price: 300000
    },
    {
        id: 16,
        name: "Perfume",
        price: 100000
    },
    {
        id: 17,
        name: "Perfume",
        price: 200000
    },
    {
        id: 18,
        name: "Perfume",
        price: 300000
    }
];

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
