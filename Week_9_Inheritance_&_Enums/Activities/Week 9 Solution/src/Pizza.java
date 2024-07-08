import java.util.ArrayList;
import java.util.Arrays;

public class Pizza {
    String name;
    boolean vegetarian = true;
    float size; //IN INCHES
    ArrayList<Topping> toppings;
    //---------------
    Pizza(String name, float size){
        this.name = name;
        this.size = size;
    }
    //---------------
    public void AddTopping(Topping topping){
        toppings.add(topping);
        switch (topping) {
            case CHICKEN, SUSPICIOUS_MEAT, MEAT, LEWIS -> vegetarian = false;
        }
    }

    public void PrintToppings(){
        System.out.print("Toppings of " + name + " pizza: ");
        for (Topping c_topp : toppings){
            System.out.print(c_topp + ", "); //Not present in JDK 19... + acc.replaceAll(" , +$", "")
        }
    }
    public boolean isVegetarian() {
        return vegetarian;
    }

}
