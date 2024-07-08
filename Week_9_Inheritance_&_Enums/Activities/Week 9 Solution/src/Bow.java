public class Bow extends Weapon{
    private String wood;
    private float bowStringLength;
    Bow(String name, int minDamage, int maxDamage, String wood, float bowStringLength){
        super(name, maxDamage,minDamage);
        this.wood = wood;
        this.bowStringLength = bowStringLength;
    }
    @Override
    public String toString(){
        return (super.toString() + "\nWood Type: " + wood + "\nBow String Length: " + bowStringLength);
    }
    @Override
    public void attack(){
        shoot();
    }

    private void shoot(){
        System.out.println(super.name + " Notches an arrow & lets loose!");
    }
}
