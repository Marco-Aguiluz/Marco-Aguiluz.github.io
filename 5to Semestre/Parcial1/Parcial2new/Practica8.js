 $(document).ready(function(){
    alert("Funciona JQUERY ");

    $('#nombre').on("click", function(){
        var nombre = $('#nombre').value();

        alert(nombre);
    });

    $('#texto').click(function(){
        $('#texto').css("display" , "inherit").fadeOut,(2000);
    });
 })
