public class Sword extends Weapon {
    private float hiltLength;
    Sword(String name, int minDamage, int maxDamage, float hiltLength){
        super(name,minDamage,maxDamage);
        this.hiltLength = hiltLength;
    }

    @Override
    public String toString(){
        return (super.toString() + "\nHilt Length: " + hiltLength);
    }
    @Override
    public void attack(){
        swing();
    }

    private void swing(){
        System.out.println(super.name + " Slashes forward!");
        double temp = (Math.round((Math.random() * 100.0)))/100.0; // rounds to 2dp
        // (super.maxDamage * temp) something something, take max damage ratio, limit to min damage, possbily add miss chance.
    }


}
