import Stacks.*;
/**
 *
 * @author EDI
 */
public class Proble1Main {

    public static void main(String[] args) {
        System.out.println("Escribe aqui tu nombre: Mariano Alcaraz Aguilar  y clave unica: 188192" );
        
        ArrayStack<String> pila1= new ArrayStack();
        pila1.push("tres");    pila1.push("-alb3");
        pila1.push("cautro");    pila1.push("-alb4");
        
        System.out.println("1)- pila1 original: " + pila1.toString());
        rotarPila1der(pila1);
        System.out.println("2)- pila1 resultante: " + pila1.toString());
        System.out.println();
   
    }
    
    public static <T> void rotarPila1der(ArrayStack<T> pila) {
        //El elemento de hasta abajo tiene que quedar arriba
        if(pila == null)
            throw new RuntimeException("La pila en rotarPila es null o está vacía");
        ArrayStack<T> pilaux = new ArrayStack<>();
        //Volteamos la pila original
        while(!pila.isEmpty()){
            pilaux.push(pila.pop());
        }
        //Salvamos el elemento a reorganizar
        T aux = pilaux.pop();
        //Metemos los elementos en la pila otra vez
        while(!pilaux.isEmpty()){
            pila.push(pilaux.pop());
        }
        //Metemos el elemento salvado
        pila.push(aux);
    }    
}
