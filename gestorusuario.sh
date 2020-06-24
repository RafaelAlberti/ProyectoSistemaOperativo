#!/bin/bash
#-------------------------------

## FUNCION PARA AGREGAR USUARIOS

funcionadduser(){

## SE BORRA CONTENIDO ACTUAL EN PANTALLA

clear


echo ----------------------
echo AGREGAR USUARIO NUEVO
echo ----------------------
echo

## LOS SIGUIENTES READ SERVIRAN PARA CREAR AL NUEVO USUARIO

read -p "INGRESE EL NOMBRE DEL USUARIO : " user
read -p "INGRESE EL DIRECTORIO DE TRABAJO : " ruta
read -p "INGRESE GRUPO PRINCIPAL DEL USUARIO : " grupo

## SE AGREGA UN NUEVO USUARIO -d PARA USAR EL DIRECTORIO /home , -m PARA UTILIZAR EL DIRECTORIO
## SOLICITADO , -s PARA DARLE UN SHELL AL USUARIO Y -g COLOCA AL USUARIO EN EL GRUPO SOLICITADO  

sudo useradd -d $ruta -m -s /bin/bash -g $grupo $user

## SE SOLICITA PASSWORD PARA EL USUARIO

sudo passwd $user
echo EL USUARIO FUE CREADO CORRECTAMENTE
sleep 3;
./gestorusuario.sh

}

#------------------------------

## FUNCION PARA ELIMINAR USUARIO

funcioneliminar(){

read -p "NOMBRE DEL USUARIO A ELIMINAR : " user

## -r PARA ELIMINAR EL CONTENIDO DEL USUARIO

userdel -r $user
echo ELIMINADO DE MANERA EXITOSA 
sleep 3
./gestorusuario.sh


}

#-------------------------------

## FUNCION PARA MODIFICAR USUARIOS

funcionmodificar(){
read -p "NOMBRE DEL USUARIO A MODIFICAR : " user
read -p "INGRESE NUEVO NOMBRE PARA EL USUARIO : " nuevouser
read -p "INGRESE NUEVA RUTA DE TRABAJO : " ruta
read -p "INGRESE NUEVO GRUPO PARA EL USUARIO : " grupo

##-l PARA RENOMBRARAR AL USUARIO

sudo usermod -l $nuevouser $user

## -g PARA USAR EL GRUPO INDICADO

sudo usermod -g $grupo $nuevouser

## -d PARA USAR EL HOME , -m PARA MOVER CONTENIDO DEL USUARIO AL NUEVO DIRECTORIO

sudo usermod -d $ruta -m $nuevouser 

## SE SOLICITA UNA NUEVA PASSWORD PARA EL USUARIO

sudo passwd $nuevouser
echo MODIFICACION CORRECTA
sleep 2
./gestorusuario.sh

}

#--------------------------------

## MENU VISUAL DEL GESTOR DE USUARIOS

clear
echo ----------------------
echo GESTOR DE USUARIOS
echo ----------------------
echo
echo 1- AGREGAR USUARIO
echo
echo 2- MODIFICAR USUARIO
echo
echo 3- ELIMINAR USUARIO
echo
echo 4- VOLVER
echo
echo 5- SALIR
echo
echo ----------------------
read -p "INGRESE SU OPCION :" opcion

## INICIO DEL CASE

## SE INICIA LA FUNCION PARA AGREGAR USUARIOS

case $opcion in 1)funcionadduser;;

## SE INICIA LA FUNCION PARA MODIFICAR USUARIOS

2)funcionmodificar;;

## SE INICIA LA FUNCION PARA ELIMINAR USUARIOS

3)funcioneliminar;;

## SE RETORNA AL MENU PRINCIPAL

4)./menu1.sh;;

## SE CIERRA EL SHELL SCRIPT

5)exit;;

## ALERTA EN CASO DE OPCION NO VALIDA

*) echo INGRESE UNA OPCION VALIDA 
sleep 2
./gestorusuario.sh;;

## FIN DEL CASE

esac
