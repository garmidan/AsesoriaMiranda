/*var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}*/

function load() {
  var elemento = document.getElementById("waitDiv");


  setTimeout(function() {
      elemento.style.display = "none";
  }, 1000);
}
window.onload = load;


function notificacion(){
  var html = '';
  $.ajax({
      type: "POST",
      url: "/Agendamiento/?c=Notificacion&a=notificacion",
      data: {
          
      },
      async: false,
      success: function (response) {
        var html ='<div class="" style="font-size:12px">';
          var objData = eval(response);
          var noVistas=0;
          html+='<div> <span class="dropdown-item-text">Tienes notificaciones</span></div>  ';
          for (var item in objData) {
          
            if(objData[item]["estado"]==0){
              noVistas+=1;
              html+='<div>';
             html +='  <a class="dropdown-item" href="#"><b>'+objData[item]["descripcion"]+' <br><span>'+objData[item]["fechaCreacion"]+'</span></b></a>';
           
             html+='</div>';
            }else{
              html+='<div>';
             html +='  <a class="dropdown-item" href="#">'+objData[item]["descripcion"]+' <br><span>'+objData[item]["fechaCreacion"]+'</span></a>';
           
             html+='</div>';
            }
           

        }
        console.log(noVistas);
        html+='</div>';
        if(noVistas!=0){
        document.getElementById('cantidadAlerts').innerHTML=noVistas+'+';
        }
        document.getElementById('alerts').innerHTML=html;
      },
      error: function (err) {
          console.error('Se presento un error ->' + err);
      }
  });
  return html;

}

function abrirM(elemento) {
  tomaropcion(elemento);
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  /*document.body.style.backgroundColor = "rgba(0,0,0,0.4)";*/

}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
  document.body.style.backgroundColor = "white";
}

function tomaropcion(elemento) {
  switch (elemento) {

  case "citas":
      var citas = "";

     
      citas += " <a href='javascript:void(0)' class='closebtn' onclick='closeNav()'>&times;</a>";
      citas += "<a> <i class='fa fa-history'></i> Historial citas</a>";
      citas += "<a href='?c=Cita&a=lista'><i class='fa fa-calendar-times-o'  ></i> Cancelar citas</a>";
      citas += "<a href='?c=Cita&a=empleado'><i class='fa fa-eye' ></i> Ver citas</a>";

      document.getElementById("mySidenav").innerHTML = citas;
      
      break;


    case "team":
      var e = "";
       e += "<a href='javascript:void(0)' class='closebtn' onclick='closeNav()'>&times;</a>";
       e += "<a href='?c=Empleado&a=ListaEmpleados'><i class='fa fa-users'></i> Ver Equipo</a>";
       e += "<a href='?c=Empleado&a=LlamarAgregar'><i class='fa fa-user-plus'></i> Agregar miembro</a>";
      // e += "<a><i class='fa fa-user-times'></i> Desabihilitar miembro</a>";
      e += "<a href='?c=Servicio&a=lista'><i class='fa fa-shower'></i> Servicios</a>";
      

       document.getElementById("mySidenav").innerHTML = e;
      break;

    case "con":

    var conf = "";
    conf += "<a href='javascript:void(0)' class='closebtn' onclick='closeNav()'>&times;</a>";
    conf += "<a><i class='fa fa-cogs'></i> Actualizar</a>";


    document.getElementById("mySidenav").innerHTML = conf;
    break;

    case "citas_cliente":

    var ct = "";

    ct += "<a href='javascript:void(0)' class='closebtn' onclick='closeNav()'>&times;</a>";
    ct += "<a href='?c=Cita&a=mostrar'><i class='fa fa-calendar-plus-o'></i> Solicitar cita</a>";
    ct += "<a href='?c=Cita&a=mis'><i  class='fa fa-eye'></i> Ver mis citas</a>";
    ct += "<a href='?c=Cita&a=lista'><i class='fa fa-calendar-times-o' ></i> Cancelar cita</a>";

    document.getElementById("mySidenav").innerHTML = ct;

    break;
    

    case  "team_cliente":
    
    var tcm = "";

    tcm += "<a href='javascript:void(0)' class='closebtn' onclick='closeNav()'>&times;</a>";
    tcm += "<a title='Ver equipo DJane' href='?c=Cliente&a=VerEmpleados'><i class='fa fa-users'></i> Ver equipo</a>";
    tcm += "<a title='Buscar miembro' ><i class='fa fa-search'></i> Buscar miembro</a>";
    tcm += "<a title='Ver nuestro canal de Youtube'><i class='fa fa-youtube'></i> Youtube</a>";
    tcm += "<a title='Ver nuestro Facebook'><i class='fa fa-facebook'></i> Facebook</a>";
    tcm += "<a title='Ver nuestro Instagram'><i class='fa fa-instagram'></i> Instagram</a>";

    document.getElementById("mySidenav").innerHTML = tcm;
    break;
    


    
      
  }


  

}
  


function openNav() {
  document.getElementById("myNav").style.height = "100%";
}

function cerrarNav() {
  document.getElementById("myNav").style.height = "0%";
}


mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {
  scrollFunction()
};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      mybutton.style.display = "block";
  } else {
      mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}


//Redirecciones


function youtube(){
  var canal ="https://www.youtube.com/channel/UCmq74aI2cw5m32_klZ7QDiw";
  window.open(canal);

}

function instagram(){
  var pagina ="https://www.instagram.com/spadjane/";
  window.open(pagina);

}

function facebook(){
  var page ="https://www.facebook.com/101197064946678/posts/197752731957777/";
  window.open(page);

}

function whatsapp(){
  pg = "https://wa.me/3125925313";

  window.open(pg);

}

function InicioAdmin(){
  var p = "";

  window.location.href = p;
}


function login(){
  var page = "/Agendamiento/Vistas/Home/Login.php ";

  window.location.href = page;
}


function registro(){
   var pager = "/Agendamiento/Vistas/Cliente/AgregarCliente.php";
   window.location.href = pager;
}

function inicia() {
  Swal.fire({
    icon: 'error',
    title: 'Oops...',
    text: 'Debes iniciar sesion primero'
  })
}
function alerta () {
  Swal.fire({
    icon: 'error',
    title: 'Oops...',
    text: 'Datos incorrectos'
  })
}
function correcto(){
  Swal.fire(
    'El cambio de clave se ejecuto correctamente',
    'Ya puede iniciar sesión',
    'success'
  )
}
function registror(){
  Swal.fire(
    'Registro correcto',
    'Ya puede iniciar sesión',
    'success'
  ).then((result) => {
    var pager = "/Agendamiento/";
   window.location.href = pager;
})
}
function errorReg () {
  Swal.fire({
    icon: 'error',
    title: 'Oops...',
    text: 'Ha ocurrido un error realizando la petición'
  })
}
