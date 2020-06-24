## SE BORRA TODO EL CONTENIDO EN PANTALLA

clear

## FUNCION PARA ACTIVAR LA CONEXION SSH , AUN EN PROGRESO

funcionactiva(){
echo FUNCION EN PROGRESO
sleep 2;
./gestorconexion.sh

}

## FUNCION PARA DESACTIVAR  LA CONEXION SSH , AUN EN PROGRESO

funciondesactiva(){
echo FUNCION EN PROGRESO
sleep 2;
./gestorconexion.sh
}

## MENU VISUAL DEL GESTOR DE LA CONEXION

echo ----------------------------
echo GESTOR DE LA CONEXION
echo ----------------------------
echo
echo 1- ACTIVAR LA CONEXION 
echo 
echo 2- DESACTIVAR LA CONEXION
echo
echo 3- VOLVER
echo
echo 4- SALIR
echo
echo  ---------------------------

## READ PARA GUARDAR LAS VARIABLES A UTILIZAR EN EL CASE 

read -p "INGRESE SU OPCION : " opcion

## INICIO DEL CASE PARA UTILIZAR LAS VARIABLES DEL MENU VISUAL

case $opcion in 

## LLAMA LA FUNCION QUE ACTIVA LA CONEXION SSH

1)funcionactiva;;

## LLAMA LA FUNCION QUE DESACTIVAR LA CONEXION SSH

2)funciondesactiva;;

## RETORNA AL SHELL SCRIPT PRINCIPAL

3)./menu1.sh;;

## CIERRA EL SHELL SCRIPT

4)exit;;

## ALERTA EN CASO DE INTRODUCIR UNA OPCION NO VALIDA

*) echo OPCION NO VALIDA
sleep 2;
./menu1.sh

## CIERRA EL CASEX

esac
