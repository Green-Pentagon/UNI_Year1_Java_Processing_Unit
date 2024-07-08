public class Staff extends Weapon{
    protected String magicType;
    Staff(String name, int minDamage, int maxDamage, String magicType){
        super(name, minDamage,maxDamage);
        this.magicType = magicType;
    }
    @Override
    public String toString(){
        return (super.toString() + "\nMagic Type: " + magicType);
    }
    @Override
    public void attack(){
        spell();
    }

    private void spell(){
        System.out.println(super.name + " used a spell projectile!");
    }
}
