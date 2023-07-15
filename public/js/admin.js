window.addEventListener("load", function (){
  let lista = document.getElementById("lista");
  let elementosLi = lista.querySelectorAll("li");
  lista.addEventListener("click", function(event) {
    let li = event.target;
    let posicion = calcularPosicion(li);
    fetch("http://localhost:3030/api/users/" + li)
    console.log("Posición del elemento: ", elementosLi[posicion].textContent);
  })

  function calcularPosicion(elemento){
    let posicion = 0;
    while (elemento.previousElementSibling) {
        elemento = elemento.previousElementSibling;
        posicion++;
    }
    return posicion;
  }
});