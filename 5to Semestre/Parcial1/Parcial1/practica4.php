<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];

    //valida pregunta 1 1. ¿Cuántas maravillas del mundo hay?
    echo "<h3>1. ¿Cuántas maravillas del mundo hay? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = 7 maravillas</h5>";
    if($pregunta1 == "7 maravillas"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2 “El que nada debe, __________.”
    echo "<h3>2. “El que nada debe, __________.”</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = </h5>";
    if($pregunta2 == "nada teme"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    echo "<h3>3. Cuáles son algunos de los niños heroes? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Juan de la Barrera, Fernando Montes de Oca </h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "Juan de la Barrera" || $pregunta3[$i] == "Fernando Montes de Oca"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    

    //valida pregunta 4. ¿Cuál es el órgano más grande del cuerpo humano?

        echo "<h3>4. ¿Cuál es el órgano más grande del cuerpo humano?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = La piel</h5>";
        if($pregunta4 =="La piel"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    //------FIN de la pregunta 4 ------------------

    //Valido pregunta 5 “El día de la independencia fue en el año __________.”

        echo "<h3>5. “El día de la independencia fue en el año __________.”</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = 1810</h5>";
        if($pregunta5 == "1810"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";

        }



    
   
    echo "<h3>6. Completa el refrán, Al que madruga </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = Dios le ayuda</h5>";
    if($pregunta6 == "Dios le ayuda"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
   

   
    echo "<h3>7. “De qué color es el círculo de la bandera de Japón”</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = Rojo</h5>";
    if($pregunta7 == "Rojo"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
 

   
    echo "<h3>8. ¿Cuáles son algunas de las maravillas del mundo? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta8)." ---- Correcta = Coliseo Románo, Cristo redentor</h5><br>";
    $p8 = 0;

    if(count($pregunta8) == 2){
        for($i=0; $i<count($pregunta8); $i++){
            if($pregunta8[$i] == "Cristo redentor" || $pregunta8[$i] == "Coliseo Románo"){
                $p8 ++;
            }
        }
        if($p8 == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    



        echo "<h3>9. ¿Cuál es el río más largo del mundo?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Río Nilo</h5>";
        if($pregunta9 =="Río Nilo"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }




        echo "<h3>10. “¨Cómo se representa el elemento Mercúrio de la tabla periodica”</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = Hg</h5>";
        if(($pregunta10) == "Hg"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }


    echo "CALIFICACIÓN FINAl = " . ($aciertos*10) . "%";

?>