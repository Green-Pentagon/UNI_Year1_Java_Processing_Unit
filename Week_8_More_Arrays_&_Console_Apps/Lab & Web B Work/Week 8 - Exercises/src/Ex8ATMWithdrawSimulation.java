import java.util.InputMismatchException;
import java.util.Scanner;
public class Ex8ATMWithdrawSimulation {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[] notesAndCoins = {1,2,5,10,20,50};//available
        int[] decomposedPrice = new int[notesAndCoins.length];//stores the amount of each different note and coins
        int sterling = 0;


        try{
            System.out.println("Enter the amount of cash to withdraw (as a whole number!)");
            sterling = input.nextInt();
        }catch(InputMismatchException e){
            System.out.println("Invalid input! setting value to £0");
        }



    }
}
