import java.util.InputMismatchException;
import java.util.Scanner;
public class Ex6ArrayOfInts {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[] user_vals;
        String acc = "";
        try{
            System.out.print("Enter the number of items you wish to store: ");
            user_vals = new int[input.nextInt()];
        }catch (InputMismatchException e){
            System.out.println("Input type mismatch, defaulting to length of 3");
            user_vals = new int[3];
            input.nextLine();
        }

        for (int i = 0;i < user_vals.length;i++){
            try{
                System.out.print("Enter value #" + i + ": ");
                user_vals[i] = input.nextInt();
                if (user_vals[i] % 2 == 0){
                    acc += (user_vals[i] + " , ");
                }
            }catch (InputMismatchException e){
                System.out.println("Input type mismatch, defaulting to 0.");
                input.nextLine();
            }
        }
        System.out.println("Even numbers: " + acc.replaceAll(" , +$", ""));
    }
}