<?php

interface DbSentencias {

const INSERTAR_PERSONA = "INSERT INTO proyectofinal2017.persona(`nombre`, `apellido`, `apellido_materno`, `dni`, `cuil`, `f_nacimiento`, `telefono_fijo`, `telefono_celular`, `telefono_alt`, `correo`, `fk_genero`, `fk_estadocivil`, `fk_domicilio`)";
const INSERTAR_DOMICILIO = "INSERT INTO proyectofinal2017.domicilio(`calle`, `numero`, `piso`, `depto`, `fk_departamento`)";
const ULTIMO_INSERTADO ="SELECT OID_domicilio FROM proyectofinal2017.domicilio WHERE LAST_INSERT_ID()";
const BUSCAR_DEPARTAMENTOS = "SELECT * FROM proyectofinal2017.departamento WHERE departamento.FK_provincia =";
const VERIFICAR_EXIST_DOMICILIO = "SELECT COUNT(OID_domicilio) FROM proyectofinal2017.domicilio WHERE ";
const VERIFICAR_EXIST_PERSONA = "SELECT COUNT(OID_persona) FROM proyectofinal2017.persona WHERE ";

const BUSCAR_PROVINCIAS = "SELECT nombre,OID_provincia FROM proyectofinal2017.provincia";

}
