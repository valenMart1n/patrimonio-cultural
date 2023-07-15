let entrar = true;
let datos = [];
window.addEventListener("load", function (){
    let pagina1 = document.querySelector(".pagina1");
    let pagina2 = document.querySelector(".pagina2");

    pagina2.classList.add("invisible"); 
    
    let imagen1 = document.getElementById("imagen1");
    let imagen2 = document.getElementById("imagen2");
    let imagen3 = document.getElementById("imagen3");
    let imagen4 = document.getElementById("imagen4");
    let imagen5 = document.getElementById("imagen5");
    let imagen6 = document.getElementById("imagen6");

    let imagenPrevia1 = document.getElementById("imagenPrevia1");
    let imagenPrevia2 = document.getElementById("imagenPrevia2");
    let imagenPrevia3 = document.getElementById("imagenPrevia3");
    let imagenPrevia4 = document.getElementById("imagenPrevia4");
    let imagenPrevia5 = document.getElementById("imagenPrevia5");
    let imagenPrevia6 = document.getElementById("imagenPrevia6");

    let form = document.querySelector("form");

    let fecha = document.getElementById("fecha");
    let fecha_error = document.getElementById("error_fecha");

    let nombre = document.querySelector(".nombre");
    let nombre_error = document.getElementById("error_nombre");


    let objeto = document.querySelector(".objeto");
    let objeto_error = document.getElementById("error_objeto");

    let descripcion = document.querySelector(".descripcion");
    let descripcion_error = document.getElementById("error_descripcion");

    let cantidad = document.querySelector(".cantidad");
    let cantidad_error = document.getElementById("error_cantidad");

    let codigo = document.querySelector(".codigo");
    let codigo_error = document.getElementById("error_codigo");
    form.addEventListener("submit", function(event){
        event.preventDefault();

        if(fecha.value == ""){
            fecha_error.classList.remove("invisible");
            fecha_error.classList.add("error_style");
            entrar = false;
            
        }else{
        fecha_error.classList.remove("error_style");
        fecha_error.classList.add("invisible"); 
        entrar = true;
        }
        
        if(nombre.value == ""){
            nombre_error.classList.remove("invisible");
            nombre_error.classList.add("error_style");
            nombre.classList.remove("fondo_correcto");
            nombre.classList.add("fondo_error");
            entrar = false;
        }else{
            nombre_error.classList.remove("error_style");
            nombre_error.classList.add("invisible"); 
            nombre.classList.remove("fondo_error");
            nombre.classList.add("fondo_correcto");
        }
        if(objeto.value == ""){
           objeto_error.classList.remove("invisible");
           objeto_error.classList.add("error_style");
           objeto.classList.remove("fondo_correcto");
            objeto.classList.add("fondo_error");
            entrar = false;
        }else{
            objeto_error.classList.remove("error_style");
            objeto_error.classList.add("invisible"); 
            objeto.classList.remove("fondo_error");
            objeto.classList.add("fondo_correcto");
        }
        if(descripcion.value == ""){
            descripcion_error.classList.remove("invisible");
            descripcion_error.classList.add("error_style");
            descripcion.classList.remove("fondo_correcto");
            descripcion.classList.add("fondo_error");
            entrar = false;
         }else{
             descripcion_error.classList.remove("error_style");
             descripcion_error.classList.add("invisible"); 
             descripcion.classList.remove("fondo_error");
             descripcion.classList.add("fondo_correcto");
         }
         if(cantidad.value == ""){
            cantidad_error.classList.remove("invisible");
            cantidad_error.classList.add("error_style");
            cantidad.classList.remove("fondo_correcto");
            cantidad.classList.add("fondo_error");
            entrar = false;
         }else{
             cantidad_error.classList.remove("error_style");
             cantidad_error.classList.add("invisible"); 
             cantidad.classList.remove("fondo_error");
             cantidad.classList.add("fondo_correcto");
         }
         if(codigo.value == ""){
            codigo_error.classList.remove("invisible");
            codigo_error.classList.add("error_style");
            codigo.classList.remove("fondo_correcto");
            codigo.classList.add("fondo_error");
            entrar = false;
         }else{
             codigo_error.classList.remove("error_style");
             codigo_error.classList.add("invisible"); 
             codigo.classList.remove("fondo_error");
             codigo.classList.add("fondo_correcto");
         }
         if(entrar){
            datos.push(fecha.value, nombre.value, objeto.value, descripcion.value, cantidad.value, codigo.value);
            pagina1.classList.add("invisible"); 
            pagina2.classList.remove("invisible"); 
            console.log(datos)
         }

    })
    imagen1.addEventListener("change", function(event){
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function(e){
            imagenPrevia1.src = e.target.result;
            
        };
       reader.readAsDataURL(file); 
    });
    imagen2.addEventListener("change", function(event){
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function(e){
            imagenPrevia2.src = e.target.result;
            
        };
       reader.readAsDataURL(file); 
    });
    imagen3.addEventListener("change", function(event){
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function(e){
            imagenPrevia3.src = e.target.result;
            
        };
       reader.readAsDataURL(file); 
    });
    imagen4.addEventListener("change", function(event){
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function(e){
            imagenPrevia4.src = e.target.result;
            
        };
       reader.readAsDataURL(file); 
    });
    imagen5.addEventListener("change", function(event){
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function(e){
            imagenPrevia5.src = e.target.result;
            
        };
       reader.readAsDataURL(file); 
    });
    imagen6.addEventListener("change", function(event){
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function(e){
            imagenPrevia6.src = e.target.result;
            
        };
       reader.readAsDataURL(file); 
    });
})