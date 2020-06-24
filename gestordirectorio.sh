## SE BORRA EL CONTENIDO ACTUAL EN PANTALLA

clear

## MENU VISUAL DEL GESTOR DE DIRECTORIOS

echo --------------------------------
echo       GESTOR DIRECTORIOS 
echo --------------------------------
echo
echo 1- CREAR DIRECTORIOS NUEVOS
echo 
echo 2- MODIFICAR DIRECTORIOS
echo
echo 3- VOLVER
echo
echo 4- SALIR
echo
echo ---------------------------------

## READ PARA GUARDAR LAS VARIABLES A USAR EN EL CASE

read -p "INGRESE SU OPCION : " opcion

#--------------------------------------------------------------------------

## FUNCION PARA CREAR DIRECTORIOS

funcion1(){

clear

## MENU VISUAL PARA CREAR DIRECTORIOS

echo ------------------------------------
echo SE CREARA EL DIRECTORIO USUARIOS
echo CON EL SIGUIENTE CONTENIDO :
echo DIRECTIORIO MEDICOS , ADMINISTRADORES
echo -------------------------------------
echo 1- CONTINUAR CON LA OPERACION 
echo 
echo 2- VOLVER 
echo
echo 3- SALIR
echo
echo ------------------------------------
read -p "INGRESE SU OPCION : " op

## INICIO DEL CASE

case $op in 

## SE CREA LOS DIRECTORIOS USUARIOS , EN EL TAMBIEN SE CREA EL DIRECTORIO MEDICO Y ADMINISTRADOR 

1) 
mkdir usuarios
chmod 777 usuarios
cd usuarios
mkdir medicos
chmod 777 medicos
mkdir administradores
chmod 777 administradores
ls 
sleep 2
cd ..
echo LOS DIRECTORIOS SE HAN CREADO SASTIFACTORIAMENTE 
./gestordirectorio.sh ;;

## SE RETORNA AL MENU DE GESTOR DE DIRECTORIO

2)
 clear
./gestordirectorio.sh;;

## SE CIERRA EL SHELL SCRIPT

3) exit;;

## FIN DEL CASE

esac
}
#-----------------------------------------------------------------------

## INICIO DEL CASE PRINCIPAL 

case $opcion in 

## INICIA LA FUNCION PARA CREAR DIRECTORIOS

1)funcion1;;

## SE MODIFICAN LOS DIRECTORIOS , OPCION NO VALIDA POR EL MOMENTO

2) echo opcion no validas
sleep 2;
./gestordirectorio.sh;;

## RETORNA AL MENU PRINCIPAL 

3)./menu1.sh;;

## SE CIERRA EL SHELL SCRIPT

4)exit;;

## ALERTA DE OPCION NO VALIDA

*) echo OPCION NO VALIDA
sleep 2;
./gestordirectorio.sh;;

## FIN DEL CASE

esac

