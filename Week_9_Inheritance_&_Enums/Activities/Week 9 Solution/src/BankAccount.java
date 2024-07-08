import java.util.ArrayList;

public class BankAccount {
    private String name;
    private double balance;
    ArrayList<Double> transactions = new ArrayList<Double>();

    BankAccount(String name, double balance){
        this.name = name;
        this.balance = balance;
    }

    public void deposit(double amount){
        if (amount > 0){
            System.out.println("£"+ amount + " deposited into the "+ name+"'s account\nPrevious balance: " + balance + "\nUpdated balance: " + (balance+amount));
            balance += amount;
            transactions.add(amount);
        }else{
            System.out.println("Invalid deposit amount entered!");
        }
    }

    public void withdraw(double amount){
        //amount = (double) Math.round((amount*100.0)/100.0);
        if (balance >= amount && amount > 0){
            System.out.println("£"+ amount + " withdrawn from " + name+ "'s account\nPrevious balance: " + balance + "\nUpdated balance: " + (balance-amount));
            balance -= amount;
            transactions.add(-amount);
        }else{
            System.out.println("Withdraw declined. Withdraw invalid or higher than the current balance.");
        }
    }

    public void printTransactions(){
        System.out.println("Transactions on "+ name+ "'s account:\n------------------------");
        for (Double index : transactions){
            System.out.println(index);
        }
        System.out.println("------------------------");
    }

    public void changeBankName(String name){
        this.name = name;
    }

}
