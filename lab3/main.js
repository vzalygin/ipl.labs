const treeBtn = document.getElementById("tree-btn");
const treeContainer = document.getElementById("tree-container");

const drawTree = (node, tabs) => {
  if (node.tagName !== undefined) {
    const text = ".&nbsp".repeat(tabs) + node.tagName;
    console.log(text);
    const p = document.createElement("p");
    p.innerHTML = text;
    treeContainer.appendChild(p);
    node.childNodes.forEach((c) => drawTree(c, tabs + 1));
  }
};

treeBtn.addEventListener("click", (event) => {
  treeContainer.textContent = "";
  drawTree(document.body, 0);
});
