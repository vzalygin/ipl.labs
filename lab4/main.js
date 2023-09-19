const makeTableElement = (value) => {
    const el = document.createElement("div");
    el.className = "table-element";
    el.innerText = value;
    return el;
};

const appendToTable = (col1, col2) => {
    const column1 = document.getElementById("column1");
    const column2 = document.getElementById("column2");
    column1.appendChild(col1);
    column2.appendChild(col2);
};

const addToTable = (nameValue, priceValue) => {
    if (nameValue === undefined && priceValue === undefined) {
        nameValue = document.getElementById("name").value;
        priceValue = document.getElementById("price").value;
    }
    const nameColumn = makeTableElement(nameValue);
    const priceColumn = makeTableElement(priceValue);
    appendToTable(nameColumn, priceColumn);
};

const makeCard = (name, price) => {
    const card = document.createElement("div");
    const img = document.createElement("img");
    const h3 = document.createElement("h3");
    card.className = "card";
    card.appendChild(img);
    card.appendChild(h3);
    img.src = `./resources/${name}.webp`;
    h3.textContent = `${name} ${price}₽`
    card.onclick = (e) => {
        addToTable(name, price);
    }
    return card;
};

const clearContent = (element) => {
    while(element.firstChild && element.removeChild(element.firstChild));
};

const renderShowcase = () => {
    const data = [
        {name: "Роза", price: "284"},
        {name: "Хамедорея", price: "455"},
        {name: "Орхидея", price: "730"},
        {name: "Цикламен", price: "288"},
        {name: "Хризантема", price: "160"},
    ];
    const showcase = document.getElementById("showcase");
    clearContent(showcase);
    for (const flower of data) {
        showcase.appendChild(makeCard(flower.name, flower.price));
    }
};

renderShowcase();