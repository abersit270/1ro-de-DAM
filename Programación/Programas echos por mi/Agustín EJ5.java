package Pide2numerosenteros;

import java.util.Scanner; //Importamos una utilidad para usarla de lector de valores
public class r05eEE {

	public static void main (String[]args) {
	
		System.out.println("Este Programa lee 2 valores enteros y puede realizar 5 distintos tipos de operaciones"); //Le damos información al cliente para guiarlo en nuestro programa
		System.out.println("Porfavor ingrese 2 valores para realizar sus operaciones");
		Scanner Scanner = new Scanner(System.in);
		float valor1 = Integer.parseInt(Scanner.nextLine());//Creamos una variable para leer una línea e interpretarlo como entero
		float valor2 = Integer.parseInt(Scanner.nextLine());

	
		System.out.println("Elija el tipo de operación (+,-,*,/,%)");
		String elegir = Scanner.nextLine();//Creé una variable para poder elegir el tipo de ecuación que deseo realizar con los valores
			
		Scanner.close();
			
		if(elegir.equals("+")){
			System.out.println("La suma de sus valores es igual a: " + (valor1 + valor2));
		}//Con estas condiciones si el usuario teclea el +/-. etc, realizará la ecuación deseada
		if(elegir.equals("-")) {
			System.out.println("La resta de sus valores es igual a: " +(valor1 - valor2));
		}
		if(elegir.equals("/"))
			System.out.println("La división de sus valores es igual a: " +(valor1 / valor2));
		if(elegir.equals("*")) {
			System.out.println("La multiplicación de sus valores es igual a: " +(valor1 * valor2));
		}
		if(elegir.equals("%")) {
			System.out.println("El módulo de sus valores es igual a: " +(valor1 % valor2));
		}	
	}	
}
