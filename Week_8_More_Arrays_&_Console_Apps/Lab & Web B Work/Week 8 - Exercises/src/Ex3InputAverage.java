import java.util.Scanner;
public class Ex3InputAverage {

    public static void main(String[] args) {
        int LENGTH = 5;
        float acc = 0.0f;
        Scanner input = new Scanner(System.in);
        for (int i = 1; i<= LENGTH;i++){
            System.out.print("Enter number #" + i + ": ");
                if (input.hasNextInt()) {
                    acc += (float)input.nextInt();
                } else {
                    System.out.println("Invalid input! Exiting...");
                    break;
                }
        }
        acc /= LENGTH;
        System.out.println("Average: "+acc);
    }
}
