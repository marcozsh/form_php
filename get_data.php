<?php

include 'conection.php';

function get_data($conn, $table)   //<- función para hacer una consulta de todos los datos de una tabla
{

    if ($conn) {
        $query = "select * from $table;";
        $result = pg_query($conn, $query);
        return $result;
    } else {
        return "error al consultar la base de datos";
    }
}

function get_region($result, $conn) // <- funcion para obtener todos los datos de la tabla región
{
    $result = get_data($conn, "region");

    if ($result) {
        if (pg_num_rows($result) > 0) {
            while ($region = pg_fetch_object($result)) {
                echo "<option name='region' value='" . $region->region_id . "'>" . $region->region_nombre . "</option>";
            }
        }
    }
}

function get_candidato($result, $conn) // <- funcion para obtener todos los datos de la tabla candidato
{
    $result = get_data($conn, "candidato");

    if ($result) {
        if (pg_num_rows($result) > 0) {
            while ($candidato = pg_fetch_object($result)) {
                echo "<option name='candidato' value='" . $candidato->rut . "'>" . $candidato->nombre . " " . $candidato->apellido . "</option>";
            }
        }
    }
}

//llenar el select con las comunas mediante ajax
$region_id = $_GET['region_id'];
$result = get_data($conn, "comuna");

if ($result) {
    if (pg_num_rows($result)) {
        while ($comuna = pg_fetch_object($result)) {
            if ($comuna->region_id == $region_id) {
                echo "<option name='comuna' value='" . $comuna->comuna_id . "'>" . $comuna->comuna_nombre . "</option>";
            }
        }
    }
}
