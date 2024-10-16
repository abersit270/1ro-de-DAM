import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
    System.out.println("Este programa indica en el estado que se encuentra una persona con respecto a su IMC");
	System.out.println("-------------------------------");
	System.out.println("Escriba su peso en KG");
	Scanner scanner = new Scanner(System.in);
	
	double peso= scanner.nextDouble();
	
	System.out.println("Escriba su altura en m");
	
	double altura= scanner.nextDouble();
	double iMC= peso/(altura*altura);
	scanner.close();

		if(iMC < 16) {
			System.out.println("Ingreso en hospital por infrapeso");
		}
		else if(iMC > 16 && iMC <17) {
			System.out.println("infrapeso");
		}
		else if(iMC >= 17 && iMC <18) {
			System.out.println("Bajo peso");
		}
		else if(iMC >= 18 && iMC <25) {
			System.out.println("Peso normal (saludable)");
		}
		else if(iMC >= 25 && iMC <30) {
			System.out.println("Sobrepeso (obesidad de grado I)");
		}
		else if(iMC >= 30 && iMC <35) {
			System.out.println("Sobrepeso crónico (obesidad de grado II)");
		}
		else if(iMC >= 35 && iMC <40) {
			System.out.println("Obesidad premórbida (obesidad de grado III)");
		}
		else {
			System.out.println("Obesidad mórbida (obesidad de grado IV)");
		}
		System.out.println("Su IMC es "+ iMC);
	}	
}
