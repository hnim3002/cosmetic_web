let quantities = document.getElementById("quantities");
const queryString = new URLSearchParams(window.location.search);

function increase() {
    let count = parseInt(quantities.innerText);
    count++;
    quantities.innerHTML = count;
}
function decrease() {
    if(quantities.innerText>1) {
        let count = parseInt(quantities.innerText);
        count--;
        quantities.innerHTML = count;
    }
}

function redirectToCart(type) {
    const id = queryString.get("id");
    let directLink = `./AddByDetails.aspx?id=${id}&quantities=${quantities.innerText}&type=${type}`;
    window.open(directLink, '_self');
}