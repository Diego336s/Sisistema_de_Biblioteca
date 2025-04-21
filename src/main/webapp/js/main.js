




function mostrarOpciones() {
    var tipoLibro = document.getElementById("tipo_libro").value;
    document.getElementById("div_primario").style.display = "none";
    document.getElementById("div_secundario").style.display = "none";
    document.getElementById("div_terciario").style.display = "none";



    if (tipoLibro === "Ficcion") {

        document.getElementById("div_primario").style.display = "block";
    } else if (tipoLibro === "No Ficcion") {

        document.getElementById("div_primario").style.display = "block";
        document.getElementById("div_secundario").style.display = "block";
    } else if (tipoLibro === "Referencia") {


        document.getElementById("div_primario").style.display = "block";
        document.getElementById("div_secundario").style.display = "block";
        document.getElementById("div_terciario").style.display = "block";
    }
}


