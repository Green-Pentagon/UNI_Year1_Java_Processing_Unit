import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex5TempConvert {


    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double user_in = 0;
        double converted_val;
        System.out.print("Enter the temperature in Fahrenheit: ");
        try{
            user_in += input.nextDouble();
        }catch (InputMismatchException e){
            System.out.println("\nINPUT MISMATCH, DEFAULTING TO 0.0");
        }
        converted_val = Math.round((user_in - 32) * (5.0/9.0));
        System.out.println("Temperature (Celsius, rounded to whole number): " + converted_val);
    }
}
