function validarcliente(){

    var nombre, correo, pass, telefono

    nombre = document.getElementById("nombre").value;
    correo = document.getElementById("correo").value;
    pass =  document.getElementById("pass").value;
    telefono = document.getElementById("telefono").value;

    if(nombre === "" 	|| correo === "" 	|| pass === "" || telefono === "" || con === ""){
        alert("Todos los campos son obligatorios");
        return false;
    }
    else if(nombre.length>30){
        alert("El nombre es muy largo");
        return false;
   
    }else if(pass.length < 5){
        alert("Su contraseña es muy corta");
        return false;
    }else if(telefono.length == 7 || telefono.length == 10 ){
        alert("Su número no es correcto");
        return false;
    }
}



  let  pass =  document.getElementById("pass");
  let line = document.getElementById("seguridad");



  pass.onfocus = function(){
      line.style.display = "block";
  }

  pass.onblur = function(){
      line.style.display = "none";
      document.getElementById("msg").innerHTML = ""
  }

  pass.onkeyup = function(){

    if(pass.value.length <= 5) {
        
        line.classList.add("short");
        document.getElementById("msg").innerHTML = "Seguridad baja"
     
    } else if(pass.value.length <= 7){

        line.classList.remove("short");
        line.classList.add("media");
        document.getElementById("msg").innerHTML = "Seguridad media"

    }else if(pass.value.length >= 10){
        line.classList.remove("media");
        line.classList.add("large");
        document.getElementById("msg").innerHTML = "Seguridad alta"
    }
    else if(pass.value.length = 0){
        line.classList.remove("large");
        line.classList.add("contenedor_seguridad");
        document.getElementById("msg").innerHTML ="Digite su contraseña";
        return false;
    }
    else if(pass.value.length <= 3){
        line.classList.add("short");
        document.getElementById("msg").innerHTML = "Seguridad baja"
        return false;
    }
  }



  function soloLetras(e) {
    var key = e.keyCode || e.which,
      tecla = String.fromCharCode(key).toLowerCase(),
      letras = " áéíóúabcdefghijklmnñopqrstuvwxyz",
      especiales = [8, 37, 39, 46],
      tecla_especial = false;

    for (var i in especiales) {
      if (key == especiales[i]) {
        tecla_especial = true;
        break;
      }
    }

    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
      return false;
    }
  }

  function soloNum(n) {
    var key = n.keyCode || n.which,
      tecla = String.fromCharCode(key).toLowerCase(),
      letras = "0123456789",
      especiales = [8, 37, 39, 46],
      tecla_especial = false;

    for (var i in especiales) {
      if (key == especiales[i]) {
        tecla_especial = true;
        break;
      }
    }

    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
      return false;
    }
  }



