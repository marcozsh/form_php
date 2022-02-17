<?php


function insert_votante($conn, $rut, $nombre_apellido, $alias, $email)
{
    $query = "insert into votante values('$rut', '$nombre_apellido', '$alias','$email');";
    $insert = pg_query($conn, $query);

    if ($conn) {
        if ($insert) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function insert_voto($conn, $rut_votante, $rut_candidato, $region_id, $comuna_id, $medio_comunicacion)
{
    $query = "";
    if ($conn) {
        if (count($medio_comunicacion) == 1) {
            $query = "insert into votos (rut_votante, rut_candidato, region_id_votante, comuna_id_votante, medio_comunicacion) 
                values ('$rut_votante', '$rut_candidato' , $region_id, $comuna_id, '$medio_comunicacion[0]');";
        } else {
            $query = "insert into votos (rut_votante, rut_candidato, region_id_votante, comuna_id_votante, medio_comunicacion) 
                values ('$rut_votante', '$rut_candidato' , $region_id, $comuna_id, '$medio_comunicacion[0], $medio_comunicacion[1]');";
        }
        $insert = pg_query($conn, $query);
        if ($insert) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}
