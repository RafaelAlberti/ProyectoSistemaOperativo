## CLEAR PARA LIMPIAR LA PANTALLA 
clear

## MENU VISUAL 


echo ----------------------------
echo       MENU PRINCIPAL
echo ----------------------------
echo 
echo 1- GESTOR DE DIRECTORIOS    
echo 
echo 2- GESTOR DE BASE DE DATOS
echo                            
echo 3- GESTOR DE LA CONEXION    
echo
echo 4- GESTOR DE USUARIOS
echo 
echo 5- GESTOR DE GRUPOS
echo 
echo 6- SALIR                           
echo -----------------------------

#READ PARA GUARDAR LA VARIABLE DE ACCESO PARA EL CASE
 
read -p " INGRESE SU OPCION : " opcion


## INICIA EL CASE PARA ACCECER A LAS DISTINTAS OPCIONES DEL MENU OPCIONAL

case $opcion in 

## ABRE EL SHELL SCRIPT PARA GESTIONAR LOS DIRECTORIOS

1)./gestordirectorio.sh ;;

## ABRE EL SHELL SCRIPT PARA GESTIONAR LA BASE DE DATOS , AUN ESTA EN FASE DE DESARROLLO

2)./gestorbasedatos.sh ;;

## ABRE EL SHELL SCRIPT PARA GESTIONAR LA CONEXION A LA RED , AUN ESTA EN FASE DE DESARROLLO

3)./gestorconexion.sh ;;

## ABRE EL SHELL SCRIPT PARA ALTAS , BAJAS , MODIFICAR USUARIOS

4)./gestorusuario.sh;;

## ABRE EL SHELL SCRIPT PARA GESTIONAR LOS USUARIOS

5)./gestorgrupo.sh;;

## CIERRA EL SHELL SCRIPT

6)exit ;;

## ALERTA EN CASO DE INTRODUCIR UNA OPCION NO VALIDA , RETORNA AL INICIO



*)echo PORFAVOR INTRODUZCA UNA OPCION VALIDA 
sleep 2
clear
./menu1.sh ;;


## CIERRA EL CASE

esac 
