import java.util.InputMismatchException;
import java.util.Scanner;

public class Web_B {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int testGrade = validateGrade(input);
        int gameGrade = validateGrade(input);
        int average = Math.round((float)(testGrade+gameGrade)/2);
        System.out.println("average: " + average + "%");
        input.close();
    }
    public static int validateGrade(Scanner input){
        int grade = -1;
        while (grade <0 || grade > 100){
            System.out.print("Enter a valid grade %: ");
            try{
                grade = input.nextInt();
            }catch(InputMismatchException e){
                System.out.println("\nInvalid input!");
            }
            input.nextLine(); //flushes scanner
        }
        return grade;
    }
}