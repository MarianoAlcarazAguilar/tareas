
/**
 *
 * @author EDI
 */


public class Proble2Main {

    public static void main(String[] args) {
        System.out.println("Escribe aqui tu nombre: Mariano Alcaraz Aguilar y clave unica: 188192 " );
        
        // Prueba #1:
        Object[] arreglo1={new Double(2.3), new Complejo(6,-4) };
        //
        System.out.println("Resultado prueba #1: "+minValNum(arreglo1));
        
        // Prueba #2:
        Object[] arreglo2={new Boolean(false),new Integer(-7),new Boolean(true),
                   new Persona("Juan Pérez",23)};
        //
        System.out.println("Resultado prueba #2: "+minValNum(arreglo2));
        
        //Prueba #3:
        Object[] arreglo3 = {new Character('a'), new Integer(2), new Boolean(false)};
        System.out.println("Resultado prueba #3: "+minValNum(arreglo3));
        
        //Prueba #4:
        Object[] arreglo4 = null;
        System.out.println("Resultado prueba #4: "+minValNum(arreglo4));
        
        //Prueba #5:
        Object[] arreglo5 = {null};
        System.out.println("Resultado prueba #5: "+minValNum(arreglo5));
    }
    
    
    public static double minValNum(Object[] arr) {
        double min = 0;
        if(arr == null){
            min = -9999;
        } else {
            if(arr[0] == null){
                min = -99;
            } else {  //Hasta aquí estamos seguros que hay al menos un objeto en el arreglo. Es momento de comparar
                double valor;
                //Asignamos como mínimo el valor del primer objeto
                
                if(arr[0] instanceof Boolean){
                    Boolean aux1 = (Boolean) arr[0];
                    if(aux1 == false){
                        min = 0;
                    } else {
                        min = 1;
                    }
                } else { //Hasta aquí sabemos que el primero no es boolean
                    if(arr[0] instanceof Character){
                        min = 2;
                    }else { //Hasta aquí sabemos que el primero no es boolean, character
                        if(arr[0] instanceof String){
                            min = 3;
                        } else { //Hasta aquí sabemos que el primero no es boolean, character, String
                            if(arr[0] instanceof Persona){
                                Persona aux2 = (Persona) arr[0];
                                min = aux2.getEdad();
                            } else {//Hasta aquí sabemos que el primero no es boolean, character, String, persona
                                if(arr[0] instanceof Complejo){
                                    Complejo aux3 = (Complejo) arr[0];
                                    double real = aux3.getParteReal();
                                    double imag = aux3.getParteImaginaria();
                                    if(real < imag){
                                        min = real;
                                    } else {
                                        min = imag;
                                    }
                                } else { //Hasta aquí sabemos que el primero no es boolean, character, String, persona, Complejo
                                    if(arr[0] instanceof Double){
                                        Double aux4 = (Double) arr[0];
                                        min = aux4;
                                    } else { //Hasta aquí sabemos que solo puede ser Integer
                                        Integer aux5 = (Integer) arr[0];
                                        min = aux5;
                                    }
                                }
                            }
                        }
                    }                    
                } //Aquí el valor min ya tiene algún valor.
                int i = 1;//Esto es para el resto de los objetos
                while( i <= arr.length-1){  //Mientras sigamos teniendo objetos en el arreglo
                    if(arr[i] instanceof Boolean){
                    Boolean aux6 = (Boolean) arr[i];
                        if(aux6 == false){
                            valor = 0;
                            if(valor < min){
                                min = valor;
                            }
                        } else {
                            valor = 1;
                            if(valor < min){
                                min = valor;
                            }
                        }
                    } else { 
                        if(arr[i] instanceof Character){
                            valor = 2;
                            if(valor < min){
                                min = valor;
                            }
                        }else { 
                            if(arr[i] instanceof String){
                                valor = 3;
                                if(valor < min){
                                    min = valor;
                                }
                            } else { 
                                if(arr[i] instanceof Persona){
                                    Persona aux7 = (Persona) arr[i];
                                    valor = aux7.getEdad();
                                    if(valor < min){
                                        min = valor;
                                    }
                                } else {
                                    if(arr[i] instanceof Complejo){
                                        Complejo aux8 = (Complejo) arr[i];
                                        double real = aux8.getParteReal();
                                        double imag = aux8.getParteImaginaria();
                                        if(real < min){
                                            min = real;
                                        }
                                        if(imag < min){
                                            min = imag;
                                        }
                                    } else { 
                                        if(arr[i] instanceof Double){
                                            Double aux9 = (Double) arr[i];
                                            valor = aux9;
                                            if(valor < min){
                                                min = valor;
                                            }
                                        } else { 
                                            Integer aux10 = (Integer) arr[i];
                                            valor = aux10;
                                            if(valor < min){
                                                min = valor;
                                            }
                                        }
                                    }
                                }
                            }
                        }                    
                    }
                    i++;
                }
            }
        }
        return min;
    }
}
