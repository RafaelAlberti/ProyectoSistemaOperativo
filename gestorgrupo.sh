## BORRA EL CONTENIDO EN PANTALLA

clear

## FUNCION PARA AGREGAR NUEVOS GRUPOS

funcionagrega(){

read -p " INGRESE EL NOMBRE PARA EL NUEVO GRUPO : " grupo
sudo groupadd $grupo
echo GRUPO CREADO EXITOSAMENTE 
sleep 2
./gestorgrupo.sh

}

## FUNCION PARA MODIFCAR GRUPO , AUN EN DESARROLLO
  
funcionmodifica(){
echo no disponible
sleep 2;
./gestorgrupo.sh
}

## FUNCION PARA ELIMINR GRUPO , EN DESARROLLO 

funcionelimina(){
echo opcion no disponible
sleep 2;
./gestorgrupo.sh
}

## MENU VISUAL DEL GESTOR DE GRUPO

echo -----------------------------
echo GESTOR DE GRUPOS
echo -----------------------------
echo
echo 1- CREAR GRUPO
echo 
echo 2- MODIFICAR GRUPO
echo
echo 3- ELIMINAR GRUPO
echo
echo 4- VOLVER
echo 
echo 5- SALIR
echo
echo ------------------------------

## READ PARA GUARDAR VARIABLE A UTILIZAR EN EL CASE

read -p " INGRESE SU OPCION : " opcion

## INICIO DE CASE 


case $opcion in

## SE INICIA LA FUNCION PARA AGREGAR NUEVO GRUPOS

1)funcionagrega;;

## SE INICIA LA FUNCION PARA MODIFICAR LOS GRUPOS , AUN EN DESARROLLO

2)funcionmodifica;;

## SE INICIA LA FUNCION PARA ELIMINAR LOS GRUPOS , AUN EN DESARROLLO

3)funcionelimina;;

## SE RETORNA AL MENU PRINCIPAL

4)./menu1.sh;;

## SE CIERRA EL SHELL SCRIPT

5)exit;;

## ALERTA EN CASO DE INTRODUCIR UNA OPCION NO VALIDA 

*) echo OPCION NO VALIDA
sleep 2;
./gestorgrupo.sh ;;

## SE CIERRA EL CASE

esac
