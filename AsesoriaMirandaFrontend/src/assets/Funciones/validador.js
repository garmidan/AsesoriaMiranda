function validaCorreoExitente(elemento) {
    var boolean = 'empieza';
    $.ajax({
        type: "POST",
        url: "/Agendamiento/?c=valida&a=existeCorreo",
        data: {
            correo: elemento
        },
        async: false,
        success: function (response) {
            boolean = response;
        },
        error: function (err) {
            console.error('Se presento un error ->' + err);
        }
    });
    return boolean;
}
function validarCorreo(correo) {
    if (correo.indexOf('@', 0) == -1 || correo.indexOf('.', 0) == -1) {
        return false;
    } else {
        return true;
    }
}

function traerValor() {
    const correo = $('#correo').val();
    var valida = validaCorreoExitente(correo);
    if ($.trim(valida) == "false") {
        $("#formulario").submit();
        return true;
    } else {
        console.log("entro error")
        alert("El correo ingresado ya se encuentra registrado")
        return false;
    }
}