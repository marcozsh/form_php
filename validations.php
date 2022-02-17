<?php

include 'conection.php';
include 'insert_data.php';

function check_rut($rut)
{
    if (!preg_match('/^[0-9.]+[-]?+[0-9kK]{1}/', $rut)) {
        return false;
    }

    $rut = preg_replace('/[\.\-]/i', '', $rut);
    $dv = substr($rut, -1);
    $numero = substr($rut, 0, strlen($rut) - 1);
    $i = 2;
    $suma = 0;
    foreach (array_reverse(str_split($numero)) as $v) {
        if ($i == 8) {
            $i = 2;
        }
        $suma += $v * $i;
        ++$i;
    }
    $dvr = 11 - ($suma % 11);

    if ($dvr == 11) {
        $dvr = 0;
    }
    if ($dvr == 10) {
        $dvr = 'K';
    }
    if ($dvr == strtoupper($dv)) {
        return true;
    } else {
        return false;
    }
}
if (isset($_POST['votar'])) {

    if (empty($_POST['nombre_apellido'])) {

        echo "<p class='advertencia'> El nombre no puede estar vac&iacute;o*</p>";
    } else {
        $nombre_apellido = $_POST['nombre_apellido'];
    }

    if (empty($_POST['alias'])) {
        echo "<p class='advertencia'> El alias no puede estar vac&iacute;o*</p>";
    } else {
        $regex = '/[A-Za-z]+[0-9]+/';
        $matchAlias = preg_match($regex, $_POST['alias']);
        if ($matchAlias != 1) {
            echo "<p class='advertencia'> El alias debe contener letras y n&uacute;meros*</p>";
        } else {
            if (strlen($_POST['alias']) < 5) {
                echo "<p class='advertencia'> El alias debe ser de m&aacute;s 5 caracteres*</p>";
            } else {
                $alias = $_POST['alias'];
            }
        }
    }

    if (empty($_POST['rut'])) {
        echo "<p class='advertencia'> El rut no puede estar vac&iacute;o*</p>";
    } else {
        if (!check_rut($_POST['rut'])) {
            echo "<p class = 'advertencia'> El rut no es valido* </p>";
        } else {
            $rut = $_POST['rut'];
        }
    }

    if (empty($_POST['email'])) {
        echo "<p class='advertencia'> El email no puede estar vac&iacute;o*</p>";
    } else {
        if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            echo "<p class='advertencia'>El mail no es valido*</p>";
        } else {
            $email = $_POST['email'];
        }
    }

    if (isset($_POST['checkbox'])) {

        if (count($_POST['checkbox']) > 2) {
            echo "<p class='advertencia'>Solo se puede escoger un m&aacute;ximo de 2 medios de comunicaci&oacute;n*</p>";
        } else {
            $medio_comunicacion = $_POST['checkbox'];
        }
    }

    if ($conn && !empty($rut)) {

        $query = "select * from votante where rut = '$rut';";

        $duplicated = pg_query($conn, $query);
        if (pg_num_rows($duplicated) > 0) {
            echo "<p class='advertencia'> Ya has votado*</p>";
        } else {

            $votante = insert_votante($conn, $rut, $nombre_apellido, $alias, $email);

            if ($votante) {
                $voto = insert_voto($conn, $rut, $_POST['candidato'], $_POST['region'], $_POST['comuna'], $medio_comunicacion);
                if ($voto) {
                    echo "<p class='correcto'>Voto ingresado correctamente</p>";
                } else {
                    echo "<p class='advertencia'>Error al ingresar el voto</p>";
                }
            } else {
                echo "<p class='advertencia'>Error al ingresar al votante</p>";
            }
        }
    }
}
