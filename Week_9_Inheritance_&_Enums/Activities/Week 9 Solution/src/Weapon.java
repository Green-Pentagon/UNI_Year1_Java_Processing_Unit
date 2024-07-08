public abstract class Weapon {
    protected String name;
    protected int minDamage;
    protected int maxDamage;

    @Override
    public String toString(){
        return ("Weapon name: " + name + "\nMinimum Damage: " + minDamage + "\nMaximum Damage: " + maxDamage);
    }
    Weapon(String name, int minDamage, int maxDamage){
        this.name = name;
        this.minDamage = minDamage;
        this.maxDamage = maxDamage;
    }

    public void attack(){
        System.out.println("Attacking with " + name);
    }
}
