## SE BORRA EL CONTENIDO DE LA PANTALLA

clear

## FUNCION PARA RESPALDAR LA BASE DE DATOS , AUN EN DESARROLLO

funcionrespaldo(){

cp -r BD/ respaldo/respaldobasedatos
echo RESPALDO EXITOSO
sleep 2;
./gestorbasedatos.sh 

}

## MENU VISUAL DEL GESTOR DE LA BASE DE DATOS

echo ----------------------------
echo GESTOR DE LA BASE DE DATOS
echo ----------------------------
echo 
echo 1- BACKUP
echo
echo 2- VOLVER 
echo
echo 3- SALIR
echo
echo ----------------------------

## READ PARA GUARDAR LAS VARIBLES A UTILIZAR EN EL CASE

read -p "INGRESE SU OPCION : " opcion

## INICIO DEL CASE

case $opcion in

## SE INICIA LA FUNCION PARA RESPALDAR LA BASE DE DATOS

1)funcionrespaldo;;

## RETORNA AL MENU PRINCIPAL

2)./menu1.sh;;

## SE CIERRA EL SHELL SCRIPT

3)exit;;

## ALERTA EN CASO DE UN OPCION NO VALIDA

*) echo OPCION NO VALIDA
sleep 2;
./gestorbasedatos.sh;;

## FIN DEL CASE


esac
