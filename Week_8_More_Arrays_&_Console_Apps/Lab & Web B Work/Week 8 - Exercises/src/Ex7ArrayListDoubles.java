import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;
public class Ex7ArrayListDoubles {
    public static void main(String[] args) {
        boolean trigger = false;
        Scanner input = new Scanner(System.in);
        ArrayList<Double> temps = new ArrayList<>();
        while (!trigger){   //cannot directly check the scanner, as it always awaits another input.
            try{
                System.out.print("Enter a value to go into ArrayList \n(type -999 to stop adding): ");
                temps.add(input.nextDouble());
                if (temps.contains(-999.0)){
                    trigger = true;
                    temps.remove(-999.0);
                }
            }catch (InputMismatchException e){
                System.out.println("Enter a valid decimal value!");
                input.nextLine();
            }
        }

        for (Double curDouble : temps){
            System.out.println(curDouble);
        }
    }
}
